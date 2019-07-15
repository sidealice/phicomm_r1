.class final Lretrofit2/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Utils$WildcardTypeImpl;,
        Lretrofit2/Utils$GenericArrayTypeImpl;,
        Lretrofit2/Utils$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static buffer(Lokhttp3/ResponseBody;)Lokhttp3/ResponseBody;
    .locals 4
    .param p0, "body"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 304
    .local v0, "buffer":Lokio/Buffer;
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lokio/BufferedSource;->readAll(Lokio/Sink;)J

    .line 305
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v1

    return-object v1
.end method

.method static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    return-object p0
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 279
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 282
    :cond_0
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 275
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Class;

    .end local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :goto_0
    return-object v0

    .restart local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 159
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 12
    .param p0, "a"    # Ljava/lang/reflect/Type;
    .param p1, "b"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    move v9, v8

    .line 110
    :cond_0
    :goto_0
    return v9

    .line 78
    :cond_1
    instance-of v10, p0, Ljava/lang/Class;

    if-eqz v10, :cond_2

    .line 79
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 81
    :cond_2
    instance-of v10, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_4

    .line 82
    instance-of v10, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_0

    move-object v2, p0

    .line 83
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .local v2, "pa":Ljava/lang/reflect/ParameterizedType;
    move-object v3, p1

    .line 84
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 85
    .local v3, "pb":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Lretrofit2/Utils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 86
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 87
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_1
    move v9, v8

    .line 85
    goto :goto_0

    :cond_3
    move v8, v9

    .line 87
    goto :goto_1

    .line 89
    .end local v2    # "pa":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_4
    instance-of v10, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v10, :cond_5

    .line 90
    instance-of v8, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v8, :cond_0

    move-object v0, p0

    .line 91
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .local v0, "ga":Ljava/lang/reflect/GenericArrayType;
    move-object v1, p1

    .line 92
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 93
    .local v1, "gb":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v8, v9}, Lretrofit2/Utils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v9

    goto :goto_0

    .line 95
    .end local v0    # "ga":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "gb":Ljava/lang/reflect/GenericArrayType;
    :cond_5
    instance-of v10, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v10, :cond_7

    .line 96
    instance-of v10, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v10, :cond_0

    move-object v6, p0

    .line 97
    check-cast v6, Ljava/lang/reflect/WildcardType;

    .local v6, "wa":Ljava/lang/reflect/WildcardType;
    move-object v7, p1

    .line 98
    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 99
    .local v7, "wb":Ljava/lang/reflect/WildcardType;
    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 100
    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :goto_2
    move v9, v8

    .line 99
    goto/16 :goto_0

    :cond_6
    move v8, v9

    .line 100
    goto :goto_2

    .line 102
    .end local v6    # "wa":Ljava/lang/reflect/WildcardType;
    .end local v7    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_7
    instance-of v10, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_0

    .line 103
    instance-of v10, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_0

    move-object v4, p0

    .line 104
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .local v4, "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v5, p1

    .line 105
    check-cast v5, Ljava/lang/reflect/TypeVariable;

    .line 106
    .local v5, "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v10

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v11

    if-ne v10, v11, :cond_8

    .line 107
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :goto_3
    move v9, v8

    .line 106
    goto/16 :goto_0

    :cond_8
    move v8, v9

    .line 107
    goto :goto_3
.end method

.method static getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .param p0, "returnType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 361
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Call return type must be parameterized as Call<Foo> or Call<? extends Foo>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    const/4 v0, 0x0

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "returnType":Ljava/lang/reflect/Type;
    invoke-static {v0, p0}, Lretrofit2/Utils;->getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "toResolve":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p2, p1, :cond_0

    .line 148
    .end local p0    # "context":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 123
    .restart local p0    # "context":Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 125
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v2, v1

    .local v2, "length":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 126
    aget-object v4, v1, v0

    if-ne v4, p2, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object p0, v4, v0

    goto :goto_0

    .line 128
    :cond_1
    aget-object v4, v1, v0

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-static {v4, v5, p2}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    .line 125
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "i":I
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "length":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_6

    .line 136
    :goto_2
    const-class v4, Ljava/lang/Object;

    if-eq p1, v4, :cond_6

    .line 137
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 138
    .local v3, "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v3, p2, :cond_4

    .line 139
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v3, p2}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    .line 143
    :cond_5
    move-object p1, v3

    .line 144
    goto :goto_2

    .end local v3    # "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object p0, p2

    .line 148
    goto :goto_0
.end method

.method static getParameterUpperBound(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 5
    .param p0, "index"    # I
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    .line 321
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 322
    .local v1, "types":[Ljava/lang/reflect/Type;
    if-ltz p0, :cond_0

    array-length v2, v1

    if-lt p0, v2, :cond_1

    .line 323
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not in range [0,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_1
    aget-object v0, v1, p0

    .line 327
    .local v0, "paramType":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_2

    .line 328
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .end local v0    # "paramType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 330
    :cond_2
    return-object v0
.end method

.method static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 6
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string v3, "type == null"

    invoke-static {p0, v3}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    .line 45
    check-cast p0, Ljava/lang/Class;

    .line 66
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 47
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v3, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 48
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 52
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 53
    .local v2, "rawType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/Class;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 54
    :cond_1
    check-cast v2, Ljava/lang/Class;

    .end local v2    # "rawType":Ljava/lang/reflect/Type;
    move-object p0, v2

    goto :goto_0

    .line 56
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_3

    .line 57
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 58
    .local v0, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v0}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 60
    .end local v0    # "componentType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_4

    .line 63
    const-class p0, Ljava/lang/Object;

    goto :goto_0

    .line 65
    :cond_4
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_5

    .line 66
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-static {v3}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 69
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 180
    :cond_0
    invoke-static {p0, p1, p2}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 179
    invoke-static {p0, p1, v0}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static hasUnresolvableType(Ljava/lang/reflect/Type;)Z
    .locals 9
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 334
    instance-of v5, p0, Ljava/lang/Class;

    if-eqz v5, :cond_1

    .line 353
    :cond_0
    :goto_0
    return v3

    .line 337
    :cond_1
    instance-of v5, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3

    move-object v1, p0

    .line 338
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 339
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v6

    array-length v7, v6

    move v5, v3

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v2, v6, v5

    .line 340
    .local v2, "typeArgument":Ljava/lang/reflect/Type;
    invoke-static {v2}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v4

    .line 341
    goto :goto_0

    .line 339
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "typeArgument":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_4

    .line 347
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v3

    goto :goto_0

    .line 349
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_4
    instance-of v3, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_5

    move v3, v4

    .line 350
    goto :goto_0

    .line 352
    :cond_5
    instance-of v3, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_6

    move v3, v4

    .line 353
    goto :goto_0

    .line 355
    :cond_6
    if-nez p0, :cond_7

    const-string v0, "null"

    .line 356
    .local v0, "className":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 355
    .end local v0    # "className":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 163
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "toFind"    # Ljava/lang/Object;

    .prologue
    .line 152
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 153
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method static isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z
    .locals 5
    .param p0, "annotations"    # [Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v1, 0x0

    .line 294
    array-length v3, p0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 295
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    const/4 v1, 0x1

    .line 299
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_0
    return v1

    .line 294
    .restart local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 22
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v17, p2

    .line 187
    check-cast v17, Ljava/lang/reflect/TypeVariable;

    .line 188
    .local v17, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 189
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    move-object/from16 v10, p2

    .line 248
    .end local v17    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    :goto_0
    return-object v10

    .line 193
    :cond_2
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v19, p2

    check-cast v19, Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v11, p2

    .line 194
    check-cast v11, Ljava/lang/Class;

    .line 195
    .local v11, "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v11}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 196
    .local v5, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 197
    .local v8, "newComponentType":Ljava/lang/reflect/Type;
    if-ne v5, v8, :cond_3

    .end local v11    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    move-object v10, v11

    goto :goto_0

    .restart local v11    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    new-instance v11, Lretrofit2/Utils$GenericArrayTypeImpl;

    .end local v11    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {v11, v8}, Lretrofit2/Utils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_1

    .line 200
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v10, p2

    .line 201
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    .line 202
    .local v10, "original":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 203
    .restart local v5    # "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 204
    .restart local v8    # "newComponentType":Ljava/lang/reflect/Type;
    if-eq v5, v8, :cond_1

    new-instance v10, Lretrofit2/Utils$GenericArrayTypeImpl;

    .end local v10    # "original":Ljava/lang/reflect/GenericArrayType;
    invoke-direct {v10, v8}, Lretrofit2/Utils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 207
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v10, p2

    .line 208
    check-cast v10, Ljava/lang/reflect/ParameterizedType;

    .line 209
    .local v10, "original":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v14

    .line 210
    .local v14, "ownerType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 211
    .local v9, "newOwnerType":Ljava/lang/reflect/Type;
    if-eq v9, v14, :cond_8

    const/4 v4, 0x1

    .line 213
    .local v4, "changed":Z
    :goto_2
    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 214
    .local v3, "args":[Ljava/lang/reflect/Type;
    const/16 v16, 0x0

    .local v16, "t":I
    array-length v6, v3

    .local v6, "length":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v6, :cond_9

    .line 215
    aget-object v19, v3, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v15

    .line 216
    .local v15, "resolvedTypeArgument":Ljava/lang/reflect/Type;
    aget-object v19, v3, v16

    move-object/from16 v0, v19

    if-eq v15, v0, :cond_7

    .line 217
    if-nez v4, :cond_6

    .line 218
    invoke-virtual {v3}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "args":[Ljava/lang/reflect/Type;
    check-cast v3, [Ljava/lang/reflect/Type;

    .line 219
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    .line 221
    :cond_6
    aput-object v15, v3, v16

    .line 214
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 211
    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v4    # "changed":Z
    .end local v6    # "length":I
    .end local v15    # "resolvedTypeArgument":Ljava/lang/reflect/Type;
    .end local v16    # "t":I
    :cond_8
    const/4 v4, 0x0

    goto :goto_2

    .line 225
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    .restart local v4    # "changed":Z
    .restart local v6    # "length":I
    .restart local v16    # "t":I
    :cond_9
    if-eqz v4, :cond_1

    .line 226
    new-instance v19, Lretrofit2/Utils$ParameterizedTypeImpl;

    invoke-interface {v10}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1, v3}, Lretrofit2/Utils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    move-object/from16 v10, v19

    goto/16 :goto_0

    .line 229
    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v4    # "changed":Z
    .end local v6    # "length":I
    .end local v9    # "newOwnerType":Ljava/lang/reflect/Type;
    .end local v10    # "original":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "ownerType":Ljava/lang/reflect/Type;
    .end local v16    # "t":I
    :cond_a
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v10, p2

    .line 230
    check-cast v10, Ljava/lang/reflect/WildcardType;

    .line 231
    .local v10, "original":Ljava/lang/reflect/WildcardType;
    invoke-interface {v10}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v12

    .line 232
    .local v12, "originalLowerBound":[Ljava/lang/reflect/Type;
    invoke-interface {v10}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v13

    .line 234
    .local v13, "originalUpperBound":[Ljava/lang/reflect/Type;
    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 235
    const/16 v19, 0x0

    aget-object v19, v12, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 236
    .local v7, "lowerBound":Ljava/lang/reflect/Type;
    const/16 v19, 0x0

    aget-object v19, v12, v19

    move-object/from16 v0, v19

    if-eq v7, v0, :cond_1

    .line 237
    new-instance v10, Lretrofit2/Utils$WildcardTypeImpl;

    .end local v10    # "original":Ljava/lang/reflect/WildcardType;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/Object;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lretrofit2/Utils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 239
    .end local v7    # "lowerBound":Ljava/lang/reflect/Type;
    .restart local v10    # "original":Ljava/lang/reflect/WildcardType;
    :cond_b
    array-length v0, v13

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 240
    const/16 v19, 0x0

    aget-object v19, v13, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lretrofit2/Utils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v18

    .line 241
    .local v18, "upperBound":Ljava/lang/reflect/Type;
    const/16 v19, 0x0

    aget-object v19, v13, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 242
    new-instance v10, Lretrofit2/Utils$WildcardTypeImpl;

    .end local v10    # "original":Ljava/lang/reflect/WildcardType;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/reflect/Type;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v18, v19, v20

    sget-object v20, Lretrofit2/Utils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lretrofit2/Utils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .end local v12    # "originalLowerBound":[Ljava/lang/reflect/Type;
    .end local v13    # "originalUpperBound":[Ljava/lang/reflect/Type;
    .end local v18    # "upperBound":Ljava/lang/reflect/Type;
    :cond_c
    move-object/from16 v10, p2

    .line 248
    goto/16 :goto_0
.end method

.method private static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lretrofit2/Utils;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v1

    .line 258
    .local v1, "declaredByRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_1

    .line 266
    .end local p2    # "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_0
    :goto_0
    return-object p2

    .line 260
    .restart local p2    # "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_1
    invoke-static {p0, p1, v1}, Lretrofit2/Utils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 261
    .local v0, "declaredBy":Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v3, p2}, Lretrofit2/Utils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 263
    .local v2, "index":I
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "declaredBy":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object p2, v3, v2

    goto :goto_0
.end method

.method static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 167
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static validateServiceInterface(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, "service":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API declarations must be interfaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API interfaces must not extend other interfaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    return-void
.end method
