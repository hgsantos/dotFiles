<?php

declare(strict_types = 1);

use Rector\Config\RectorConfig;

try {
    return RectorConfig::configure()->withPaths([
        __DIR__ . '/app',
        __DIR__ . '/database',
        __DIR__ . '/tests',
        __DIR__ . '/routes',
    ])->withSets([
        Rector\Set\ValueObject\SetList::DEAD_CODE,
        Rector\Set\ValueObject\SetList::CODE_QUALITY,
        Rector\Set\ValueObject\SetList::TYPE_DECLARATION,
        Rector\Set\ValueObject\SetList::PRIVATIZATION,
        Rector\Set\ValueObject\SetList::EARLY_RETURN,
        Rector\Set\ValueObject\SetList::STRICT_BOOLEANS,
    ])->withPhpSets(php83: true);
} catch (Rector\Exception\Configuration\InvalidConfigurationException $e) {
    echo "Erro na configuração do Rector: " . $e->getMessage();
}
