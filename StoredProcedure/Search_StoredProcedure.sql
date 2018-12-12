SELECT
    DISTINCT O.NAME
FROM
    SYSDEPENDS AS D
INNER JOIN
    SYSOBJECTS AS O
ON
    D.ID = O.ID
WHERE
    O.XTYPE = 'P'
    AND D.DEPID =
        (
            SELECT
                ID
            FROM
                SYSOBJECTS
            WHERE
                NAME = 'TE8050'
        )
