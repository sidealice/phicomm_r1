.class public Lcom/phicomm/speaker/f/k;
.super Ljava/lang/Object;
.source "GenericUtils.java"


# direct methods
.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-static {p0, v0}, Lcom/phicomm/speaker/f/k;->a(Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 19
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    return-object v0

    .line 23
    :cond_1
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    if-eqz p0, :cond_5

    .line 28
    array-length v1, p0

    if-gt v1, p1, :cond_3

    goto :goto_0

    .line 32
    :cond_3
    aget-object v1, p0, p1

    instance-of v1, v1, Ljava/lang/Class;

    if-nez v1, :cond_4

    return-object v0

    .line 36
    :cond_4
    aget-object p0, p0, p1

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method
