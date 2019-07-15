.class Lorg/litepal/crud/DynamicExecutor;
.super Ljava/lang/Object;
.source "DynamicExecutor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 129
    .local v1, "objectField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 131
    .end local v1    # "objectField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-static {v3, p1}, Lorg/litepal/exceptions/DataSupportException;->noSuchFieldExceptioin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .param p4, "parameterTypes"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p2, :cond_0

    .line 66
    const/4 v2, 0x0

    :try_start_0
    new-array p2, v2, [Ljava/lang/Object;

    .line 68
    :cond_0
    if-nez p4, :cond_1

    .line 69
    const/4 v2, 0x0

    new-array p4, v2, [Ljava/lang/Class;

    .line 71
    :cond_1
    invoke-virtual {p3, p1, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 72
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 74
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    .line 76
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v3, p1}, Lorg/litepal/exceptions/DataSupportException;->noSuchMethodException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 101
    .local v1, "objectField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 102
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 103
    .end local v1    # "objectField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    .line 105
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-static {v3, p1}, Lorg/litepal/exceptions/DataSupportException;->noSuchFieldExceptioin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
