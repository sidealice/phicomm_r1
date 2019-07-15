.class public final Lorg/xutils/db/table/ColumnEntity;
.super Ljava/lang/Object;
.source "ColumnEntity.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z

.field protected final columnConverter:Lorg/xutils/db/converter/ColumnConverter;

.field protected final columnField:Ljava/lang/reflect/Field;

.field protected final getMethod:Ljava/lang/reflect/Method;

.field protected final name:Ljava/lang/String;

.field protected final setMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;Lorg/xutils/db/annotation/Column;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Lorg/xutils/db/annotation/Column;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 45
    iput-object p2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    .line 46
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    .line 47
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->property()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->a:Ljava/lang/String;

    .line 48
    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->isId()Z

    move-result v1

    iput-boolean v1, p0, Lorg/xutils/db/table/ColumnEntity;->b:Z

    .line 50
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 51
    iget-boolean v2, p0, Lorg/xutils/db/table/ColumnEntity;->b:Z

    if-eqz v2, :cond_0

    invoke-interface {p3}, Lorg/xutils/db/annotation/Column;->autoGen()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {v1}, Lorg/xutils/db/table/ColumnUtils;->isAutoIdType(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lorg/xutils/db/table/ColumnEntity;->c:Z

    .line 52
    invoke-static {v1}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object p3

    iput-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    .line 55
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    .line 56
    iget-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p3

    if-nez p3, :cond_1

    .line 57
    iget-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    :cond_1
    invoke-static {p1, p2}, Lorg/xutils/db/table/ColumnUtils;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    .line 60
    iget-object p1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 61
    iget-object p1, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getColumnConverter()Lorg/xutils/db/converter/ColumnConverter;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    return-object v0
.end method

.method public getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnField()Ljava/lang/reflect/Field;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 86
    invoke-virtual {p0, p1}, Lorg/xutils/db/table/ColumnEntity;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 87
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->c:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v0, p1}, Lorg/xutils/db/converter/ColumnConverter;->fieldValue2DbValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    .line 117
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->getMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoId()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->c:Z

    return v0
.end method

.method public isId()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lorg/xutils/db/table/ColumnEntity;->b:Z

    return v0
.end method

.method public setAutoIdValue(Ljava/lang/Object;J)V
    .locals 2

    .line 94
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/db/table/ColumnUtils;->isInteger(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    long-to-int p2, p2

    .line 96
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 99
    :cond_0
    iget-object p2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_1

    .line 101
    :try_start_0
    iget-object p2, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_1
    :try_start_1
    iget-object p2, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public setValueFromCursor(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 2

    .line 66
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->columnConverter:Lorg/xutils/db/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lorg/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    if-eqz p3, :cond_1

    .line 71
    :try_start_0
    iget-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->setMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_1
    :try_start_1
    iget-object p3, p0, Lorg/xutils/db/table/ColumnEntity;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/xutils/db/table/ColumnEntity;->name:Ljava/lang/String;

    return-object v0
.end method
