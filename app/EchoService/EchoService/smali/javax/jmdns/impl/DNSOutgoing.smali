.class public final Ljavax/jmdns/impl/DNSOutgoing;
.super Ljavax/jmdns/impl/DNSMessage;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    }
.end annotation


# static fields
.field private static final HEADER_SIZE:I = 0xc

.field public static USE_DOMAIN_NAME_COMPRESSION:Z


# instance fields
.field private final _additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private final _authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

.field private _maxUDPPayload:I

.field _names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final _questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/jmdns/impl/DNSOutgoing;->USE_DOMAIN_NAME_COMPRESSION:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 196
    const/4 v0, 0x1

    const/16 v1, 0x5b4

    invoke-direct {p0, p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 197
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "multicast"    # Z

    .prologue
    .line 206
    const/16 v0, 0x5b4

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(IZI)V

    .line 207
    return-void
.end method

.method public constructor <init>(IZI)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "multicast"    # Z
    .param p3, "senderUDPPayload"    # I

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/DNSMessage;-><init>(IIZ)V

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    .line 220
    if-lez p3, :cond_0

    move v0, p3

    :goto_0
    iput v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    .line 221
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 222
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 223
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 224
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-direct {v0, p3, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    .line 225
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x5b4

    goto :goto_0
.end method


# virtual methods
.method public addAdditionalAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    .locals 5
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 317
    .local v1, "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p2, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 318
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 319
    .local v0, "byteArray":[B
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 320
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 325
    return-void

    .line 323
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)V
    .locals 2
    .param p1, "in"    # Ljavax/jmdns/impl/DNSIncoming;
    .param p2, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Ljavax/jmdns/impl/DNSRecord;->suppressedBy(Ljavax/jmdns/impl/DNSIncoming;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;->addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 265
    :cond_1
    return-void
.end method

.method public addAnswer(Ljavax/jmdns/impl/DNSRecord;J)V
    .locals 6
    .param p1, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    if-eqz p1, :cond_1

    .line 276
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->isExpired(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 277
    :cond_0
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 278
    .local v1, "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    invoke-virtual {v1, p1, p2, p3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 279
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 280
    .local v0, "byteArray":[B
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 281
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 288
    .end local v0    # "byteArray":[B
    .end local v1    # "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    :cond_1
    return-void

    .line 284
    .restart local v0    # "byteArray":[B
    .restart local v1    # "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addAuthorativeAnswer(Ljavax/jmdns/impl/DNSRecord;)V
    .locals 5
    .param p1, "rec"    # Ljavax/jmdns/impl/DNSRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 298
    .local v1, "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    .line 299
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 300
    .local v0, "byteArray":[B
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 301
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 306
    return-void

    .line 304
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    .locals 5
    .param p1, "rec"    # Ljavax/jmdns/impl/DNSQuestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v2, 0x200

    invoke-direct {v1, v2, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 244
    .local v1, "record":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    invoke-virtual {v1, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    .line 245
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 246
    .local v0, "byteArray":[B
    array-length v2, v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->availableSpace()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 247
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 252
    return-void

    .line 250
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "message full"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public availableSpace()I
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    add-int/lit8 v0, v0, -0xc

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questionsBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionalsAnswersBytes:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public data()[B
    .locals 7

    .prologue
    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 334
    .local v2, "now":J
    iget-object v6, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 336
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    iget v6, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    invoke-direct {v1, v6, p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;)V

    .line 337
    .local v1, "message":Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    iget-boolean v6, p0, Ljavax/jmdns/impl/DNSOutgoing;->_multicast:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v1, v6}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 338
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v6

    invoke-virtual {v1, v6}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 339
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v6

    invoke-virtual {v1, v6}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 340
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v6

    invoke-virtual {v1, v6}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 341
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v6

    invoke-virtual {v1, v6}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 342
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v6

    invoke-virtual {v1, v6}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 343
    iget-object v6, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/impl/DNSQuestion;

    .line 344
    .local v4, "question":Ljavax/jmdns/impl/DNSQuestion;
    invoke-virtual {v1, v4}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V

    goto :goto_1

    .line 337
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v6

    goto :goto_0

    .line 346
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 347
    .local v5, "record":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v1, v5, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_2

    .line 349
    .end local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_2
    iget-object v6, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 350
    .restart local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v1, v5, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_3

    .line 352
    .end local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_3
    iget-object v6, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSRecord;

    .line 353
    .restart local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    invoke-virtual {v1, v5, v2, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V

    goto :goto_4

    .line 355
    .end local v5    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_4
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method public getMaxUDPPayload()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Ljavax/jmdns/impl/DNSOutgoing;->_maxUDPPayload:I

    return v0
.end method

.method public isQuery()Z
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method print(Z)Ljava/lang/String;
    .locals 2
    .param p1, "dump"    # Z

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->print()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    if-eqz p1, :cond_0

    .line 370
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->data()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSOutgoing;->print([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->isQuery()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "dns[query:"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    const-string v4, " id=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v4

    if-eqz v4, :cond_2

    .line 382
    const-string v4, ", flags=0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 385
    const-string v4, ":r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1

    .line 388
    const-string v4, ":aa"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_2

    .line 391
    const-string v4, ":tc"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v4

    if-lez v4, :cond_3

    .line 395
    const-string v4, ", questions="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 398
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v4

    if-lez v4, :cond_4

    .line 399
    const-string v4, ", answers="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 402
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v4

    if-lez v4, :cond_5

    .line 403
    const-string v4, ", authorities="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 406
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v4

    if-lez v4, :cond_6

    .line 407
    const-string v4, ", additionals="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 410
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfQuestions()I

    move-result v4

    if-lez v4, :cond_8

    .line 411
    const-string v4, "\nquestions:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing;->_questions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/DNSQuestion;

    .line 413
    .local v2, "question":Ljavax/jmdns/impl/DNSQuestion;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 378
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_7
    const-string v4, "dns[response:"

    goto/16 :goto_0

    .line 417
    :cond_8
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAnswers()I

    move-result v4

    if-lez v4, :cond_9

    .line 418
    const-string v4, "\nanswers:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing;->_answers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 420
    .local v3, "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 424
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAuthorities()I

    move-result v4

    if-lez v4, :cond_a

    .line 425
    const-string v4, "\nauthorities:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 427
    .restart local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 431
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing;->getNumberOfAdditionals()I

    move-result v4

    if-lez v4, :cond_b

    .line 432
    const-string v4, "\nadditionals:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing;->_additionals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSRecord;

    .line 434
    .restart local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 438
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Ljavax/jmdns/impl/DNSRecord;
    :cond_b
    const-string v4, "\nnames="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 440
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
