.class public final Ljavax/jmdns/impl/DNSIncoming;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSIncoming$1;,
        Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
    }
.end annotation


# static fields
.field public static USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

.field private static final _nibbleToHex:[C

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private final _messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

.field private final _packet:Ljava/net/DatagramPacket;

.field private final _receivedTime:J

.field private _senderUDPPayload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    .line 557
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "id"    # I
    .param p3, "multicast"    # Z
    .param p4, "packet"    # Ljava/net/DatagramPacket;
    .param p5, "receivedTime"    # J

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 247
    iput-object p4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 248
    new-instance v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 249
    iput-wide p5, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 14
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 184
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    sget v12, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    if-ne v9, v12, :cond_0

    move v9, v10

    :goto_0
    invoke-direct {p0, v11, v11, v9}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 185
    iput-object p1, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    .line 186
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 187
    .local v8, "source":Ljava/net/InetAddress;
    new-instance v9, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v12

    invoke-direct {v9, v11, v12}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BI)V

    iput-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    .line 189
    const/16 v9, 0x5b4

    iput v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 192
    :try_start_0
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/DNSIncoming;->setId(I)V

    .line 193
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/DNSIncoming;->setFlags(I)V

    .line 194
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v6

    .line 195
    .local v6, "numQuestions":I
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v4

    .line 196
    .local v4, "numAnswers":I
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    .line 197
    .local v5, "numAuthorities":I
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v9}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v3

    .line 200
    .local v3, "numAdditionals":I
    if-lez v6, :cond_1

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 202
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-direct {p0}, Ljavax/jmdns/impl/DNSIncoming;->readQuestion()Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "i":I
    .end local v3    # "numAdditionals":I
    .end local v4    # "numAnswers":I
    .end local v5    # "numAuthorities":I
    .end local v6    # "numQuestions":I
    .end local v8    # "source":Ljava/net/InetAddress;
    :cond_0
    move v9, v11

    .line 184
    goto :goto_0

    .line 207
    .restart local v3    # "numAdditionals":I
    .restart local v4    # "numAnswers":I
    .restart local v5    # "numAuthorities":I
    .restart local v6    # "numQuestions":I
    .restart local v8    # "source":Ljava/net/InetAddress;
    :cond_1
    if-lez v4, :cond_3

    .line 208
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 209
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v7

    .line 210
    .local v7, "rec":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v7, :cond_2

    .line 212
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 217
    .end local v1    # "i":I
    .end local v7    # "rec":Ljavax/jmdns/impl/DNSRecord;
    :cond_3
    if-lez v5, :cond_5

    .line 218
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v5, :cond_5

    .line 219
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v7

    .line 220
    .restart local v7    # "rec":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v7, :cond_4

    .line 222
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 227
    .end local v1    # "i":I
    .end local v7    # "rec":Ljavax/jmdns/impl/DNSRecord;
    :cond_5
    if-lez v3, :cond_7

    .line 228
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_7

    .line 229
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;

    move-result-object v7

    .line 230
    .restart local v7    # "rec":Ljavax/jmdns/impl/DNSRecord;
    if-eqz v7, :cond_6

    .line 232
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 236
    .end local v1    # "i":I
    .end local v3    # "numAdditionals":I
    .end local v4    # "numAnswers":I
    .end local v5    # "numAuthorities":I
    .end local v6    # "numQuestions":I
    .end local v7    # "rec":Ljavax/jmdns/impl/DNSRecord;
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DNSIncoming() dump "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v10}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n exception "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    new-instance v2, Ljava/io/IOException;

    const-string v9, "DNSIncoming corrupted message"

    invoke-direct {v2, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw v2

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v3    # "numAdditionals":I
    .restart local v4    # "numAnswers":I
    .restart local v5    # "numAuthorities":I
    .restart local v6    # "numQuestions":I
    :cond_7
    return-void
.end method

.method private _hexString([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 569
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 570
    aget-byte v3, p1, v1

    and-int/lit16 v0, v3, 0xff

    .line 571
    .local v0, "b":I
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    div-int/lit8 v4, v0, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    sget-object v3, Ljavax/jmdns/impl/DNSIncoming;->_nibbleToHex:[C

    rem-int/lit8 v4, v0, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 575
    .end local v0    # "b":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private readAnswer(Ljava/net/InetAddress;)Ljavax/jmdns/impl/DNSRecord;
    .locals 44
    .param p1, "source"    # Ljava/net/InetAddress;

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "domain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v8

    invoke-static {v8}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v42

    .line 285
    .local v42, "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-ne v0, v8, :cond_0

    .line 286
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find record type. domain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 288
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v41

    .line 289
    .local v41, "recordClassIndex":I
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-ne v0, v8, :cond_5

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 290
    .local v4, "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    :goto_0
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v4, v8, :cond_1

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-eq v0, v8, :cond_1

    .line 291
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find record class. domain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 293
    :cond_1
    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v5

    .line 294
    .local v5, "unique":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readInt()I

    move-result v6

    .line 295
    .local v6, "ttl":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v28

    .line 296
    .local v28, "len":I
    const/4 v2, 0x0

    .line 298
    .local v2, "rec":Ljavax/jmdns/impl/DNSRecord;
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual/range {v42 .. v42}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 427
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 428
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DNSIncoming() unknown type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 430
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->skip(J)J

    .line 433
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 434
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljavax/jmdns/impl/DNSRecord;->setRecordSource(Ljava/net/InetAddress;)V

    .line 436
    :cond_4
    return-object v2

    .line 289
    .end local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    .end local v4    # "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    .end local v5    # "unique":Z
    .end local v6    # "ttl":I
    .end local v28    # "len":I
    :cond_5
    invoke-static/range {v41 .. v41}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    goto/16 :goto_0

    .line 300
    .restart local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    .restart local v4    # "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    .restart local v5    # "unique":Z
    .restart local v6    # "ttl":I
    .restart local v28    # "len":I
    :pswitch_0
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$IPv4Address;

    .end local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv4Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 301
    .restart local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_1

    .line 303
    :pswitch_1
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$IPv6Address;

    .end local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$IPv6Address;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 304
    .restart local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_1

    .line 307
    :pswitch_2
    const-string v7, ""

    .line 308
    .local v7, "service":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v7

    .line 309
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 310
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Pointer;

    .end local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .restart local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_1

    .line 312
    :cond_6
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PTR record of class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", there was a problem reading the service name of the answer for domain:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    .end local v7    # "service":Ljava/lang/String;
    :pswitch_3
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Text;

    .end local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v13}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 317
    .restart local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    goto :goto_1

    .line 319
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v13

    .line 320
    .local v13, "priority":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v14

    .line 321
    .local v14, "weight":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v15

    .line 322
    .local v15, "port":I
    const-string v16, ""

    .line 325
    .local v16, "target":Ljava/lang/String;
    sget-boolean v8, Ljavax/jmdns/impl/DNSIncoming;->USE_DOMAIN_NAME_FORMAT_FOR_SRV_TARGET:Z

    if-eqz v8, :cond_7

    .line 326
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v16

    .line 331
    :goto_2
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$Service;

    .end local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v16}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 332
    .restart local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    goto/16 :goto_1

    .line 329
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readNonNameString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 334
    .end local v13    # "priority":I
    .end local v14    # "weight":I
    .end local v15    # "port":I
    .end local v16    # "target":Ljava/lang/String;
    :pswitch_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v24, "buf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v8, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v27

    .line 337
    .local v27, "index":I
    if-lez v27, :cond_8

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 338
    .local v22, "cpu":Ljava/lang/String;
    if-lez v27, :cond_9

    add-int/lit8 v8, v27, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 339
    .local v23, "os":Ljava/lang/String;
    new-instance v2, Ljavax/jmdns/impl/DNSRecord$HostInformation;

    .end local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v17 .. v23}, Ljavax/jmdns/impl/DNSRecord$HostInformation;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    .line 340
    .restart local v2    # "rec":Ljavax/jmdns/impl/DNSRecord;
    goto/16 :goto_1

    .line 337
    .end local v22    # "cpu":Ljava/lang/String;
    .end local v23    # "os":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 338
    .restart local v22    # "cpu":Ljava/lang/String;
    :cond_9
    const-string v8, ""

    goto :goto_4

    .line 342
    .end local v22    # "cpu":Ljava/lang/String;
    .end local v24    # "buf":Ljava/lang/StringBuilder;
    .end local v27    # "index":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v8

    invoke-static {v8, v6}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v26

    .line 343
    .local v26, "extendedResultCode":Ljavax/jmdns/impl/constants/DNSResultCode;
    const/high16 v8, 0xff0000

    and-int/2addr v8, v6

    shr-int/lit8 v43, v8, 0x10

    .line 344
    .local v43, "version":I
    if-nez v43, :cond_11

    .line 345
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 346
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    if-lez v8, :cond_3

    .line 348
    const/16 v30, 0x0

    .line 349
    .local v30, "optionCodeInt":I
    const/16 v29, 0x0

    .line 350
    .local v29, "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_d

    .line 351
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v30

    .line 352
    invoke-static/range {v30 .. v30}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v29

    .line 357
    const/16 v31, 0x0

    .line 358
    .local v31, "optionLength":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_e

    .line 359
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v31

    .line 364
    const/4 v8, 0x0

    new-array v0, v8, [B

    move-object/from16 v32, v0

    .line 365
    .local v32, "optiondata":[B
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v8}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->available()I

    move-result v8

    move/from16 v0, v31

    if-lt v8, v0, :cond_b

    .line 366
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readBytes(I)[B

    move-result-object v32

    .line 370
    :cond_b
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming$1;->$SwitchMap$javax$jmdns$impl$constants$DNSOptionCode:[I

    invoke-virtual/range {v29 .. v29}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto :goto_5

    .line 377
    :pswitch_7
    const/16 v38, 0x0

    .line 378
    .local v38, "ownerVersion":I
    const/16 v37, 0x0

    .line 379
    .local v37, "ownerSequence":I
    const/16 v35, 0x0

    .line 380
    .local v35, "ownerPrimaryMacAddress":[B
    const/16 v39, 0x0

    .line 381
    .local v39, "ownerWakeupMacAddress":[B
    const/16 v33, 0x0

    .line 383
    .local v33, "ownerPassword":[B
    const/4 v8, 0x0

    :try_start_0
    aget-byte v38, v32, v8

    .line 384
    const/4 v8, 0x1

    aget-byte v37, v32, v8

    .line 385
    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v36, v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x3

    const/4 v9, 0x5

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x4

    const/4 v9, 0x6

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x5

    const/4 v9, 0x7

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v35    # "ownerPrimaryMacAddress":[B
    .local v36, "ownerPrimaryMacAddress":[B
    move-object/from16 v39, v36

    .line 387
    :try_start_1
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x8

    if-le v8, v9, :cond_c

    .line 389
    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v40, v0

    const/4 v8, 0x0

    const/16 v9, 0x8

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x1

    const/16 v9, 0x9

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x2

    const/16 v9, 0xa

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x3

    const/16 v9, 0xb

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x4

    const/16 v9, 0xc

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x5

    const/16 v9, 0xd

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    .end local v39    # "ownerWakeupMacAddress":[B
    .local v40, "ownerWakeupMacAddress":[B
    move-object/from16 v39, v40

    .line 391
    .end local v40    # "ownerWakeupMacAddress":[B
    .restart local v39    # "ownerWakeupMacAddress":[B
    :cond_c
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x12

    if-ne v8, v9, :cond_13

    .line 393
    const/4 v8, 0x4

    new-array v0, v8, [B

    move-object/from16 v34, v0

    const/4 v8, 0x0

    const/16 v9, 0xe

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x1

    const/16 v9, 0xf

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x3

    const/16 v9, 0x11

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    .end local v33    # "ownerPassword":[B
    .local v34, "ownerPassword":[B
    :goto_6
    :try_start_2
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x16

    if-ne v8, v9, :cond_12

    .line 397
    const/16 v8, 0x8

    new-array v0, v8, [B

    move-object/from16 v33, v0

    const/4 v8, 0x0

    const/16 v9, 0xe

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x1

    const/16 v9, 0xf

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x3

    const/16 v9, 0x11

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x4

    const/16 v9, 0x12

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x5

    const/16 v9, 0x13

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x6

    const/16 v9, 0x14

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x7

    const/16 v9, 0x15

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v34    # "ownerPassword":[B
    .restart local v33    # "ownerPassword":[B
    :goto_7
    move-object/from16 v35, v36

    .line 402
    .end local v36    # "ownerPrimaryMacAddress":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    :goto_8
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 403
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled Owner OPT version: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " sequence: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " MAC address: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " wakeup MAC address: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v33, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " password: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_a
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 354
    .end local v31    # "optionLength":I
    .end local v32    # "optiondata":[B
    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .end local v37    # "ownerSequence":I
    .end local v38    # "ownerVersion":I
    .end local v39    # "ownerWakeupMacAddress":[B
    :cond_d
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 361
    .restart local v31    # "optionLength":I
    :cond_e
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    .restart local v32    # "optiondata":[B
    .restart local v33    # "ownerPassword":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    .restart local v37    # "ownerSequence":I
    .restart local v38    # "ownerVersion":I
    .restart local v39    # "ownerWakeupMacAddress":[B
    :catch_0
    move-exception v25

    .line 400
    .local v25, "exception":Ljava/lang/Exception;
    :goto_b
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed OPT answer. Option code: Owner data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 403
    .end local v25    # "exception":Ljava/lang/Exception;
    :cond_f
    const-string v8, ""

    goto :goto_9

    :cond_10
    const-string v8, ""

    goto :goto_a

    .line 410
    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .end local v37    # "ownerSequence":I
    .end local v38    # "ownerVersion":I
    .end local v39    # "ownerWakeupMacAddress":[B
    :pswitch_8
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 411
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an OPT answer. Option code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 415
    :pswitch_9
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an OPT answer. Not currently handled. Option code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSIncoming;->_hexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 423
    .end local v29    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v30    # "optionCodeInt":I
    .end local v31    # "optionLength":I
    .end local v32    # "optiondata":[B
    :cond_11
    sget-object v8, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an OPT answer. Wrong version number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 399
    .restart local v29    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v30    # "optionCodeInt":I
    .restart local v31    # "optionLength":I
    .restart local v32    # "optiondata":[B
    .restart local v33    # "ownerPassword":[B
    .restart local v36    # "ownerPrimaryMacAddress":[B
    .restart local v37    # "ownerSequence":I
    .restart local v38    # "ownerVersion":I
    .restart local v39    # "ownerWakeupMacAddress":[B
    :catch_1
    move-exception v25

    move-object/from16 v35, v36

    .end local v36    # "ownerPrimaryMacAddress":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    goto/16 :goto_b

    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .restart local v34    # "ownerPassword":[B
    .restart local v36    # "ownerPrimaryMacAddress":[B
    :catch_2
    move-exception v25

    move-object/from16 v33, v34

    .end local v34    # "ownerPassword":[B
    .restart local v33    # "ownerPassword":[B
    move-object/from16 v35, v36

    .end local v36    # "ownerPrimaryMacAddress":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    goto/16 :goto_b

    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .restart local v34    # "ownerPassword":[B
    .restart local v36    # "ownerPrimaryMacAddress":[B
    :cond_12
    move-object/from16 v33, v34

    .end local v34    # "ownerPassword":[B
    .restart local v33    # "ownerPassword":[B
    goto/16 :goto_7

    :cond_13
    move-object/from16 v34, v33

    .end local v33    # "ownerPassword":[B
    .restart local v34    # "ownerPassword":[B
    goto/16 :goto_6

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 370
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private readQuestion()Ljavax/jmdns/impl/DNSQuestion;
    .locals 9

    .prologue
    .line 271
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readName()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "domain":Ljava/lang/String;
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v5

    invoke-static {v5}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    .line 273
    .local v3, "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v3, v5, :cond_0

    .line 274
    sget-object v5, Ljavax/jmdns/impl/DNSIncoming;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find record type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/DNSIncoming;->print(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 276
    :cond_0
    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_messageInputStream:Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v2

    .line 277
    .local v2, "recordClassIndex":I
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    .line 278
    .local v1, "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v4

    .line 279
    .local v4, "unique":Z
    invoke-static {v0, v3, v1, v4}, Ljavax/jmdns/impl/DNSQuestion;->newQuestion(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/DNSQuestion;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method append(Ljavax/jmdns/impl/DNSIncoming;)V
    .locals 2
    .param p1, "that"    # Ljavax/jmdns/impl/DNSIncoming;

    .prologue
    .line 534
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getQuestions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 536
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAnswers()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 537
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAuthorities()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 538
    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSIncoming;->getAdditionals()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 542
    return-void

    .line 540
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->clone()Ljavax/jmdns/impl/DNSIncoming;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/DNSIncoming;
    .locals 8

    .prologue
    .line 260
    new-instance v1, Ljavax/jmdns/impl/DNSIncoming;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isMulticast()Z

    move-result v4

    iget-object v5, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    iget-wide v6, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/DNSIncoming;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 261
    .local v1, "in":Ljavax/jmdns/impl/DNSIncoming;
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    iput v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    .line 262
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v0, v1, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    return-object v1
.end method

.method public elapseSinceArrival()I
    .locals 4

    .prologue
    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_receivedTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getSenderUDPPayload()I
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming;->_senderUDPPayload:I

    return v0
.end method

.method print(Z)Ljava/lang/String;
    .locals 5
    .param p1, "dump"    # Z

    .prologue
    const/4 v4, 0x0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->print()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    if-eqz p1, :cond_0

    .line 446
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    new-array v1, v2, [B

    .line 447
    .local v1, "data":[B
    iget-object v2, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSIncoming;->print([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .end local v1    # "data":[B
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->isQuery()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "dns[query,"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 458
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_0
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    const-string v4, ", length="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_packet:Ljava/net/DatagramPacket;

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 464
    const-string v4, ", id=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v4

    if-eqz v4, :cond_3

    .line 467
    const-string v4, ", flags=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 470
    const-string v4, ":r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    .line 473
    const-string v4, ":aa"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_3

    .line 476
    const-string v4, ":tc"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v4

    if-lez v4, :cond_4

    .line 480
    const-string v4, ", questions="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v4

    if-lez v4, :cond_5

    .line 484
    const-string v4, ", answers="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v4

    if-lez v4, :cond_6

    .line 488
    const-string v4, ", authorities="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v4

    if-lez v4, :cond_7

    .line 492
    const-string v4, ", additionals="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 495
    :cond_7
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfQuestions()I

    move-result v4

    if-lez v4, :cond_9

    .line 496
    const-string v4, "\nquestions:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_questions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSQuestion;

    .line 498
    .local v2, "question":Ljavax/jmdns/impl/DNSQuestion;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 456
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_8
    const-string v4, "dns[response,"

    goto/16 :goto_0

    .line 502
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAnswers()I

    move-result v4

    if-lez v4, :cond_a

    .line 503
    const-string v4, "\nanswers:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_answers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 505
    .local v3, "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 509
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAuthorities()I

    move-result v4

    if-lez v4, :cond_b

    .line 510
    const-string v4, "\nauthorities:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 512
    .restart local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 516
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_b
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming;->getNumberOfAdditionals()I

    move-result v4

    if-lez v4, :cond_c

    .line 517
    const-string v4, "\nadditionals:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    iget-object v4, p0, Ljavax/jmdns/impl/DNSIncoming;->_additionals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 519
    .restart local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 523
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_c
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
