.class public final Lorg/eclipse/paho/client/mqttv3/c/b;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 0

    .line 172
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static a(C)Z
    .locals 1

    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdc00

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 113
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 58
    :cond_0
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->b(Ljava/lang/CharSequence;)[C

    move-result-object p1

    invoke-static {p0, p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;[C)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/CharSequence;[C)Z
    .locals 11

    .line 69
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 72
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 73
    array-length v2, p1

    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v2, -0x1

    move v5, v1

    :goto_0
    if-lt v5, v0, :cond_1

    return v1

    .line 77
    :cond_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v7, v1

    :goto_1
    if-lt v7, v2, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 79
    :cond_2
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_5

    .line 81
    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(C)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_4

    if-ne v7, v4, :cond_3

    return v9

    :cond_3
    if-ge v5, v3, :cond_5

    add-int/lit8 v8, v7, 0x1

    .line 86
    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_5

    return v9

    :cond_4
    return v9

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    return v1
.end method

.method public static a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_3

    move v3, v2

    move v2, v1

    .line 39
    :goto_1
    array-length v4, p1

    if-lt v2, v4, :cond_1

    move v2, v3

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    .line 40
    aget-object v3, p1, v2

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return v2
.end method

.method private static a([C)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 120
    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3

    .line 151
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 156
    :goto_0
    invoke-static {p0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private static b(Ljava/lang/CharSequence;)[C
    .locals 4

    .line 130
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    .line 134
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 135
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    .line 137
    :cond_1
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
