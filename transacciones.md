# Transacciones en Bases de Datos

## ¿Qué es una transacción en bases de datos y por qué es importante?

Una transacción es un conjunto de operaciones SQL que se ejecutan como una única unidad de trabajo.

Las transacciones son importantes porque permiten mantener la integridad y consistencia de los datos, evitando errores o pérdidas de información cuando ocurre una falla durante una operación.

Además, permiten confirmar cambios mediante `COMMIT` o revertirlos utilizando `ROLLBACK`.

---

## Atomicidad

La atomicidad garantiza que una transacción se ejecute completamente o no se ejecute en absoluto.

Si ocurre un error durante el proceso, todos los cambios realizados se cancelan automáticamente.

---

## Consistencia

La consistencia asegura que los datos mantengan reglas válidas antes y después de una transacción.

Esto evita inconsistencias y garantiza que las relaciones entre tablas sean correctas.

---

## Aislamiento

El aislamiento permite que varias transacciones se ejecuten al mismo tiempo sin interferir unas con otras.

Cada transacción funciona de manera independiente.

---

## Durabilidad

La durabilidad garantiza que los cambios confirmados con `COMMIT` permanezcan almacenados permanentemente, incluso si ocurre un fallo del sistema.

---

## Diferencia entre COMMIT y ROLLBACK

`COMMIT` guarda los cambios realizados en la base de datos de manera permanente.

`ROLLBACK` cancela todos los cambios realizados durante la transacción y devuelve la base de datos a su estado anterior.

---

## Ejemplo de transacción

```sql
BEGIN;

UPDATE pedidos
SET total = 0
WHERE id = 1;

ROLLBACK;
```

En este ejemplo se inicia una transacción, se modifica temporalmente el total de un pedido y luego se utiliza `ROLLBACK` para deshacer los cambios.

Esto demuestra cómo las transacciones permiten recuperar el estado anterior de la base de datos en caso de errores o pruebas.

--- 

## Ejemplo de transacción con COMMIT

```sql
BEGIN;

DELETE FROM pedidos
WHERE id = 2;

COMMIT;
```

En este ejemplo se elimina un pedido dentro de una transacción y luego se utiliza `COMMIT` para confirmar los cambios.

Una vez ejecutado el `COMMIT`, la eliminación queda almacenada permanentemente en la base de datos.

---

## Diferencia entre ROLLBACK y COMMIT

La principal diferencia es que `COMMIT` guarda los cambios realizados en una transacción de forma permanente, mientras que `ROLLBACK` deshace los cambios y devuelve la base de datos a su estado anterior.

Con `COMMIT`, las modificaciones como INSERT, UPDATE o DELETE quedan almacenadas definitivamente.

Con `ROLLBACK`, todos los cambios realizados durante la transacción se cancelan, lo que permite recuperar la información original en caso de errores o pruebas.