.class public final Lorg/xutils/db/table/ColumnEntity;
.super Ljava/lang/Object;
.source "ColumnEntity.java"


# instance fields
.field protected final columnConverter:Lorg/xutils/db/converter/ColumnConverter;

.field protected final columnField:Ljava/lang/reflect/Field;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field private final isAutoId:Z

.field private final isId:Z

.field protected final name:Ljava/lang/String;

.field private final property:Ljava/lang/String;

.field protected final setMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/xutils/db/annotation/Column;)V
    .locals 3
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "column"    # Lorg/xutils/db/annotation/Column;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Lorg/xutils/db/annotation/Column;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    iput-object p2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    .line 46
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    .line 47
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->property()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->property:Ljava/lang/String;

    .line 48
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->isId()Z

    move-result v1

    iput-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    if-eqz v1, :cond_2

    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->autoGen()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lorg/xutils/db/table/ColumnUtils;->isAutoIdType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    .line 52
    invoke-static {v0}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    .line 55
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->findGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    .line 56
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    :cond_0
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->findSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    .line 60
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    :cond_1
    return-void

    .line 51
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getColumnConverter()Lorg/xutils/db/converter/ColumnConverter;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    return-object v0
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/ColumnEntity;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .local v0, "fieldValue":Ljava/lang/Object;
    iget-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v1, v0}, Lorg/xutils/db/converter/ColumnConverter;->fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "entity"    # Ljava/lang/Object;

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "fieldValue":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 117
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 119
    :try_start_0
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 120
    .restart local v1    # "fieldValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 126
    :catch_1
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->property:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoId()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isAutoId:Z

    return v0
.end method

.method public isId()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->isId:Z

    return v0
.end method

.method public setAutoIdValue(Ljava/lang/Object;J)V
    .locals 6
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "value"    # J

    .prologue
    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 95
    .local v1, "idValue":Ljava/lang/Long;
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/xutils/db/table/ColumnUtils;->isInteger(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    long-to-int v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 99
    .end local v1    # "idValue":Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 101
    :try_start_0
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setValueFromCursor(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 5
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "index"    # I

    .prologue
    .line 66
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v2, p2, p3}, Lorg/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 71
    :try_start_0
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method
