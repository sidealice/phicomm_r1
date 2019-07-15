.class public Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSOutgoing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOutputStream"
.end annotation


# instance fields
.field private final _offset:I

.field private final _out:Ljavax/jmdns/impl/DNSOutgoing;


# direct methods
.method constructor <init>(ILjavax/jmdns/impl/DNSOutgoing;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "out"    # Ljavax/jmdns/impl/DNSOutgoing;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;I)V

    .line 37
    return-void
.end method

.method constructor <init>(ILjavax/jmdns/impl/DNSOutgoing;I)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "out"    # Ljavax/jmdns/impl/DNSOutgoing;
    .param p3, "offset"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 41
    iput-object p2, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    .line 42
    iput p3, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_offset:I

    .line 43
    return-void
.end method


# virtual methods
.method writeByte(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 46
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write(I)V

    .line 47
    return-void
.end method

.method writeBytes(Ljava/lang/String;II)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 51
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method writeBytes([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 59
    :cond_0
    return-void
.end method

.method writeBytes([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 63
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method writeInt(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 73
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 74
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 75
    return-void
.end method

.method writeName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method writeName(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCompression"    # Z

    .prologue
    const/4 v8, 0x0

    .line 117
    move-object v0, p1

    .line 119
    .local v0, "aName":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 120
    .local v2, "n":I
    if-gez v2, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 123
    :cond_1
    if-gtz v2, :cond_2

    .line 124
    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 134
    :goto_1
    return-void

    .line 127
    :cond_2
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "label":Ljava/lang/String;
    if-eqz p2, :cond_4

    sget-boolean v5, Ljavax/jmdns/impl/DNSOutgoing;->USE_DOMAIN_NAME_COMPRESSION:Z

    if-eqz v5, :cond_4

    .line 129
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    iget-object v5, v5, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 130
    .local v3, "offset":Ljava/lang/Integer;
    if-eqz v3, :cond_3

    .line 131
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 132
    .local v4, "val":I
    shr-int/lit8 v5, v4, 0x8

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 133
    and-int/lit16 v5, v4, 0xff

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_1

    .line 136
    .end local v4    # "val":I
    :cond_3
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    iget-object v5, v5, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v6

    iget v7, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_offset:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v8, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 141
    .end local v3    # "offset":Ljava/lang/Integer;
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v8, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    goto :goto_2
.end method

.method writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 1
    .param p1, "question"    # Ljavax/jmdns/impl/DNSQuestion;

    .prologue
    .line 149
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 151
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 152
    return-void
.end method

.method writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 8
    .param p1, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .param p2, "now"    # J

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 157
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    :goto_0
    or-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 158
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getTTL()I

    move-result v2

    :goto_1
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeInt(I)V

    .line 161
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v2, 0x200

    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    iget v5, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_offset:I

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v4, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;I)V

    .line 162
    .local v1, "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    invoke-virtual {p1, v1}, Ljavax/jmdns/impl/DNSRecord;->write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V

    .line 163
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 165
    .local v0, "byteArray":[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 166
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 167
    return-void

    .end local v0    # "byteArray":[B
    .end local v1    # "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    :cond_0
    move v2, v3

    .line 157
    goto :goto_0

    .line 158
    :cond_1
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->getRemainingTTL(J)I

    move-result v2

    goto :goto_1
.end method

.method writeShort(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 68
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 69
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 70
    return-void
.end method

.method writeUTF(Ljava/lang/String;II)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/16 v6, 0x7ff

    const/16 v5, 0x7f

    const/4 v4, 0x1

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "utflen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 81
    add-int v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82
    .local v0, "ch":I
    if-lt v0, v4, :cond_0

    if-gt v0, v5, :cond_0

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    if-le v0, v6, :cond_1

    .line 86
    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 88
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 93
    .end local v0    # "ch":I
    :cond_2
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 95
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p3, :cond_5

    .line 96
    add-int v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 97
    .restart local v0    # "ch":I
    if-lt v0, v4, :cond_3

    if-gt v0, v5, :cond_3

    .line 98
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 95
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 100
    :cond_3
    if-le v0, v6, :cond_4

    .line 101
    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 102
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 103
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_3

    .line 105
    :cond_4
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 106
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_3

    .line 110
    .end local v0    # "ch":I
    :cond_5
    return-void
.end method
