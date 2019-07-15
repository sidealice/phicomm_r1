.class public Lorg/xutils/common/util/ParameterizedTypeUtil;
.super Ljava/lang/Object;
.source "ParameterizedTypeUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;
    .locals 12
    .param p0, "ownerType"    # Ljava/lang/reflect/Type;
    .param p2, "paramIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "declaredClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 21
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 22
    .local v4, "pt":Ljava/lang/reflect/ParameterizedType;
    const/4 v0, 0x0

    .line 23
    .local v0, "ats":[Ljava/lang/reflect/Type;
    const/4 v7, 0x0

    .line 24
    .local v7, "tps":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    instance-of v9, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_0

    move-object v4, p0

    .line 25
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 26
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v1, Ljava/lang/Class;

    .line 27
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    .line 32
    :goto_0
    if-ne p1, v1, :cond_2

    .line 33
    if-eqz v0, :cond_1

    .line 34
    aget-object v9, v0, p2

    .line 58
    :goto_1
    return-object v9

    :cond_0
    move-object v1, p0

    .line 30
    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    .line 36
    :cond_1
    const-class v9, Ljava/lang/Object;

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 40
    .local v8, "types":[Ljava/lang/reflect/Type;
    if-eqz v8, :cond_4

    .line 41
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v9, v8

    if-ge v3, v9, :cond_4

    .line 42
    aget-object v6, v8, v3

    .line 43
    .local v6, "t":Ljava/lang/reflect/Type;
    instance-of v9, v6, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_3

    move-object v9, v6

    .line 44
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 45
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 47
    :try_start_0
    invoke-static {v6, p1, p2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v9, v7, v0}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getTrueType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_1

    .line 48
    :catch_0
    move-exception v9

    .line 41
    .end local v2    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 55
    .end local v3    # "i":I
    .end local v6    # "t":Ljava/lang/reflect/Type;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 56
    .local v5, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_5

    .line 57
    invoke-virtual {p1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v9, p1, p2}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 58
    invoke-static {v9, v7, v0}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getTrueType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    goto :goto_1

    .line 64
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FindGenericType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", declaredClass: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private static getTrueType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p2, "actualTypes"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_2

    move-object v3, p0

    .line 77
    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 78
    .local v3, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "name":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 80
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_0

    .line 81
    aget-object v4, p1, v1

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 82
    aget-object v3, p2, v1

    .line 95
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    :goto_1
    return-object v3

    .line 80
    .restart local v1    # "i":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_2
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_3

    move-object v4, p0

    .line 90
    check-cast v4, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v4}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 91
    .local v0, "ct":Ljava/lang/reflect/Type;
    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_3

    .line 92
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "ct":Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, p0

    .line 95
    goto :goto_1
.end method
