<?php

declare(strict_types=1);

$config = new PhpCsFixer\Config();

return $config->setRules([
    '@PhpCsFixer' => true,
    '@PhpCsFixer:risky' => true,
    '@PHP80Migration' => true,
    '@PHP80Migration:risky' => true,
    '@PHP74Migration' => true,
    '@PHP74Migration:risky' => true,
    'braces' => [
        'allow_single_line_anonymous_class_with_empty_body' => true,
        'allow_single_line_closure' => true,
        'position_after_functions_and_oop_constructs' => 'same',
        'position_after_control_structures' => 'same',
        'position_after_anonymous_constructs' => 'same',
    ],
    'concat_space' => ['spacing' => 'one'],
    'increment_style' => ['style' => 'post'],
    'ordered_class_elements' => [
        'order' => [
            'use_trait',
            'constant_public',
            'constant_protected',
            'constant_private',
            'property_public',
            'property_protected',
            'property_private',
            'construct',
            'destruct',
            'magic',
            'phpunit',
            'method',
        ],
    ],
    'method_argument_space' => [
        'keep_multiple_spaces_after_comma' => false,
        'ensure_fully_multiline' => true,
        'on_multiline' => 'ensure_fully_multiline',
        'after_heredoc' => true,
    ],
    'nullable_type_declaration_for_default_null_value' => [
        'use_nullable_type_declaration' => true,
    ],
    'phpdoc_to_param_type' => true,
    'phpdoc_to_return_type' => ['scalar_types' => true],
    'declare_strict_types' => false,
    'blank_line_before_statement' => [
        'statements' => [
            'break',
            'case',
            'continue',
            'declare',
            'default',
            'die',
            'do',
            'exit',
            'for',
            'foreach',
            'goto',
            'if',
            'return',
            'switch',
            'throw',
            'try',
            'while',
            'yield',
            'yield_from',
        ],
    ],
    'yoda_style' => [
        'equal' => false,
        'identical' => false,
        'less_and_greater' => false,
    ],
    'phpdoc_align' => [
        'tags' => [
            'method',
            'param',
            'property',
            'return',
            'throws',
            'type',
            'var',
        ],
        'align' => 'left',
    ],
    'phpdoc_annotation_without_dot' => false,
]);
