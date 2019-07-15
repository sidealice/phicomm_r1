.class final Lcom/phicomm/speaker/player/logger/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    if-ne p0, p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    .line 48
    :cond_1
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 49
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 50
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 51
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_2

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 55
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    .line 54
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    move v2, v3

    .line 61
    goto :goto_0
.end method

.method static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const-string v3, ""

    .line 89
    :goto_0
    return-object v3

    .line 77
    :cond_0
    move-object v2, p0

    .line 78
    .local v2, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v2, :cond_2

    .line 79
    instance-of v3, v2, Ljava/net/UnknownHostException;

    if-eqz v3, :cond_1

    .line 80
    const-string v3, ""

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_1

    .line 85
    :cond_2
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 86
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 87
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 89
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static logLevel(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 93
    packed-switch p0, :pswitch_data_0

    .line 107
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    const-string v0, "VERBOSE"

    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "DEBUG"

    goto :goto_0

    .line 99
    :pswitch_2
    const-string v0, "INFO"

    goto :goto_0

    .line 101
    :pswitch_3
    const-string v0, "WARN"

    goto :goto_0

    .line 103
    :pswitch_4
    const-string v0, "ERROR"

    goto :goto_0

    .line 105
    :pswitch_5
    const-string v0, "ASSERT"

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    const-string v0, "null"

    .line 145
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    instance-of v0, p0, [Z

    if-eqz v0, :cond_2

    .line 119
    check-cast p0, [Z

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    .line 122
    check-cast p0, [B

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p0, [C

    if-eqz v0, :cond_4

    .line 125
    check-cast p0, [C

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, [S

    if-eqz v0, :cond_5

    .line 128
    check-cast p0, [S

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p0, [I

    if-eqz v0, :cond_6

    .line 131
    check-cast p0, [I

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p0, [J

    if-eqz v0, :cond_7

    .line 134
    check-cast p0, [J

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p0, [F

    if-eqz v0, :cond_8

    .line 137
    check-cast p0, [F

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_8
    instance-of v0, p0, [D

    if-eqz v0, :cond_9

    .line 140
    check-cast p0, [D

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_9
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 143
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "object":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_a
    const-string v0, "Couldn\'t find a correct type for the object"

    goto/16 :goto_0
.end method
