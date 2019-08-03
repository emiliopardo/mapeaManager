<?php

declare(strict_types=1);
namespace App\Validator\Constraints;

// src/Validator/Constraints/ValidWMCFile.php

use XMLReader;
use Symfony\Component\Validator\Constraint;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\Validator\ConstraintValidator;
use Symfony\Component\Validator\Exception\UnexpectedTypeException;
use Symfony\Component\Validator\Exception\UnexpectedValueException;
use Symfony\Component\Validator\Exception\InvalidArgumentException;


/**
 * @Annotation
 */
class ValidWMCFileValidator extends ConstraintValidator
{
    const XSD_CONTEXT_PATH = 'http://schemas.opengis.net/context/1.0.0/context.xsd';

    private $doc;
    private $xml;
    private $value;
    private $errors;

    public function validate($value, Constraint $constraint)
    {
        $this->value = $value;

        libxml_use_internal_errors(true);

        if (!$constraint instanceof ValidWMCFile) {
            throw new UnexpectedTypeException($constraint, ValidWMCFile::class);
        }

        if (null === $value) {
            return;
        }

        if (!simplexml_load_file($this->value->getRealPath())) { 
            $this->errors = libxml_get_errors();
            throw new UnexpectedValueException($value, 'Extensible Markup Language (XML) and must be well formated: '.$this->mostrarError());
        }
    }

    public function mostrarError(): string 
    {
        $msg = '';
        if ($this->errors == NULL) {
            return '';
        }
        foreach ($this->errors as $error) {
            switch ($error->level) {
                case LIBXML_ERR_WARNING:
                    $nivel = 'Warning';
                    break;
                case LIBXML_ERR_ERROR :
                    $nivel = 'Error';
                    break;
                case LIBXML_ERR_FATAL:
                    $nivel = 'Fatal Error';
                    break;
            }
            $msg .= "Error $error->code [$nivel]:"
                    . PHP_EOL
                    . "Linea: $error->line  "
                    . "Mensaje: $error->message" 
                    . PHP_EOL;
        }
        libxml_clear_errors();
        return $msg;
    }

    function getErrors()
    {
        return $this->errors;
    }

    function setErrors($errors)
    {
        $this->errors = $errors;
    }
}