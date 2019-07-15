.class public Lorg/eclipse/paho/client/mqttv3/t;
.super Ljava/lang/Object;
.source "MqttTopic.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method private static a(Ljava/lang/String;)V
    .locals 9

    const-string v0, "+"

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v2, "/"

    .line 223
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 226
    array-length v4, v3

    move v5, v1

    :goto_0
    if-lt v5, v4, :cond_0

    return-void

    :cond_0
    add-int/lit8 v6, v5, -0x1

    if-ltz v6, :cond_1

    .line 229
    aget-char v6, v3, v6

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    if-ge v7, v4, :cond_2

    .line 230
    aget-char v8, v3, v7

    goto :goto_2

    :cond_2
    move v8, v1

    .line 232
    :goto_2
    aget-char v5, v3, v5

    if-ne v5, v0, :cond_5

    if-eq v6, v2, :cond_3

    if-nez v6, :cond_4

    :cond_3
    if-eq v8, v2, :cond_5

    if-eqz v8, :cond_5

    .line 238
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid usage of single-level wildcard in topic string \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "\'!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v5, v7

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    const v2, 0xffff

    if-le v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    const/4 p1, 0x2

    .line 179
    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "#"

    aput-object v2, p1, v0

    const-string v0, "+"

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const-string p1, "#"

    .line 191
    invoke-static {p0, p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p1

    if-gt p1, v1, :cond_3

    const-string p1, "#"

    .line 193
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const-string p1, "/#"

    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 207
    :cond_2
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/t;->a(Ljava/lang/String;)V

    return-void

    .line 195
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Invalid usage of multi-level wildcard in topic string: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string p1, "#+"

    .line 215
    invoke-static {p0, p1}, Lorg/eclipse/paho/client/mqttv3/c/b;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 216
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The topic name MUST NOT contain any wildcard characters (#+)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    :cond_6
    :goto_1
    const-string p0, "Invalid topic length, should be in range[1, 65535]!"

    .line 171
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p0

    .line 159
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    .line 260
    invoke-static {p0, v2}, Lorg/eclipse/paho/client/mqttv3/t;->a(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    .line 261
    invoke-static {p1, v3}, Lorg/eclipse/paho/client/mqttv3/t;->a(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_7

    if-lt v5, v0, :cond_1

    goto :goto_3

    .line 269
    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_2

    goto :goto_3

    .line 271
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x23

    const/16 v9, 0x2b

    if-eq v6, v9, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v8, :cond_3

    .line 272
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v6, v10, :cond_3

    goto :goto_3

    .line 274
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_5

    add-int/lit8 v6, v5, 0x1

    :goto_1
    if-ge v6, v0, :cond_6

    .line 277
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v5, 0x1

    goto :goto_1

    .line 280
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_6

    add-int/lit8 v5, v0, -0x1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v2

    goto :goto_0

    :cond_7
    :goto_3
    if-ne v5, v0, :cond_8

    if-ne v4, v1, :cond_8

    return v2

    :cond_8
    return v3
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/t;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
