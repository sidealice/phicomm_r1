.class public Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSIncoming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInputStream"
.end annotation


# static fields
.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field final _names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "length"    # I

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BII)V

    .line 42
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method protected declared-synchronized peek()I
    .locals 2

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->count:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->buf:[B

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readByte()I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readBytes(I)[B
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 67
    new-array v0, p1, [B

    .line 68
    .local v0, "bytes":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read([BII)I

    .line 69
    return-object v0
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public readName()Ljava/lang/String;
    .locals 13

    .prologue
    .line 115
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v7, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/StringBuilder;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 118
    .local v2, "finished":Z
    :goto_0
    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v6

    .line 120
    .local v6, "len":I
    if-nez v6, :cond_1

    .line 121
    const/4 v2, 0x1

    .line 156
    .end local v6    # "len":I
    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 157
    .local v4, "index":Ljava/lang/Integer;
    iget-object v11, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 124
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":Ljava/lang/Integer;
    .restart local v6    # "len":I
    :cond_1
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSLabel:[I

    invoke-static {v6}, Ljavax/jmdns/impl/constants/DNSLabel;->labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 153
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unsupported dns label type: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    and-int/lit16 v12, v6, 0xc0

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_0
    iget v10, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    add-int/lit8 v8, v10, -0x1

    .line 127
    .local v8, "offset":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/StringBuilder;

    .line 130
    .local v9, "previousLabel":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 132
    .end local v9    # "previousLabel":Ljava/lang/StringBuilder;
    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 135
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "offset":I
    :pswitch_1
    invoke-static {v6}, Ljavax/jmdns/impl/constants/DNSLabel;->labelValue(I)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v11

    or-int v4, v10, v11

    .line 136
    .local v4, "index":I
    iget-object v10, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "compressedLabel":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 138
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad domain name: possible circular name detected. Bad offset: 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at 0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    add-int/lit8 v12, v12, -0x2

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 139
    const-string v1, ""

    .line 141
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/StringBuilder;

    .line 143
    .restart local v9    # "previousLabel":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 145
    .end local v9    # "previousLabel":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v2, 0x1

    .line 146
    goto/16 :goto_0

    .line 149
    .end local v1    # "compressedLabel":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    :pswitch_2
    sget-object v10, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    const-string v11, "Extended label are not currently supported."

    invoke-virtual {v10, v11}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    .end local v6    # "len":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public readNonNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    .line 164
    .local v0, "len":I
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readUTF(I)Ljava/lang/String;
    .locals 5
    .param p1, "len"    # I

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 75
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v1

    .line 76
    .local v1, "ch":I
    shr-int/lit8 v3, v1, 0x4

    packed-switch v3, :pswitch_data_0

    .line 101
    :pswitch_0
    and-int/lit8 v3, v1, 0x3f

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int v1, v3, v4

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 105
    :goto_1
    :pswitch_1
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :pswitch_2
    and-int/lit8 v3, v1, 0x1f

    shl-int/lit8 v3, v3, 0x6

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v1, v3, v4

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    goto :goto_1

    .line 95
    :pswitch_3
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0xc

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v1, v3, v4

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_1

    .line 107
    .end local v1    # "ch":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public readUnsignedShort()I
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
