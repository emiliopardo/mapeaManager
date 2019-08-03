<?php

declare(strict_types=1);

namespace App\Validator\Constraints;

// src/Validator/Constraints/ValidWMCFile.php

use Symfony\Component\Validator\Constraint;

/**
 * @Annotation
 */

class ValidWMCFile extends Constraint
{
    public $message = 'The file "{{string}}" is not a well XML format.';
}