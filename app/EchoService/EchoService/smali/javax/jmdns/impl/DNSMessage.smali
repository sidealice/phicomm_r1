.class public abstract Ljavax/jmdns/impl/DNSMessage;
.super Ljava/lang/Object;
.source "DNSMessage.java"


# static fields
.field public static final MULTICAST:Z = true

.field public static final UNICAST:Z


# instance fields
.field protected final _additionals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final _answers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected final _authoritativeAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation
.end field

.field private _flags:I

.field private _id:I

.field _multicast:Z

.field protected final _questions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSQuestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "id"    # I
    .param p3, "multicast"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    .line 58
    iput p2, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    .line 59
    iput-boolean p3, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    .line 64
    return-void
.end method


# virtual methods
.method public getAdditionals()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    return-object v0
.end method

.method public getAllAnswers()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v0, "aList":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v1, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 139
    return-object v0
.end method

.method public getAnswers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    return-object v0
.end method

.method public getAuthorities()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    goto :goto_0
.end method

.method public getNumberOfAdditionals()I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAdditionals()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfAnswers()I
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAnswers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfAuthorities()I
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getAuthorities()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getNumberOfQuestions()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getQuestions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getQuestions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/jmdns/impl/DNSQuestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfQuestions()I

    move-result v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAnswers()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAuthorities()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSMessage;->getNumberOfAdditionals()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMulticast()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Ljavax/jmdns/impl/DNSMessage;->_multicast:Z

    return v0
.end method

.method public isQuery()Z
    .locals 2

    .prologue
    .line 199
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

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

.method public isResponse()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 208
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method print()Ljava/lang/String;
    .locals 5

    .prologue
    .line 224
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v4, 0xc8

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 225
    .local v1, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v4, p0, Ljavax/jmdns/impl/DNSMessage;->_questions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/jmdns/impl/DNSQuestion;

    .line 228
    .local v3, "question":Ljavax/jmdns/impl/DNSQuestion;
    const-string v4, "\tquestion:      "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 230
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 232
    .end local v3    # "question":Ljavax/jmdns/impl/DNSQuestion;
    :cond_0
    iget-object v4, p0, Ljavax/jmdns/impl/DNSMessage;->_answers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 233
    .local v0, "answer":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\tanswer:        "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 235
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 237
    .end local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    :cond_1
    iget-object v4, p0, Ljavax/jmdns/impl/DNSMessage;->_authoritativeAnswers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 238
    .restart local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\tauthoritative: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 240
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 242
    .end local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    :cond_2
    iget-object v4, p0, Ljavax/jmdns/impl/DNSMessage;->_additionals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 243
    .restart local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    const-string v4, "\tadditional:    "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 245
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 247
    .end local v0    # "answer":Ljavax/jmdns/impl/DNSRecord;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected print([B)Ljava/lang/String;
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/16 v9, 0x20

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0xfa0

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "off":I
    array-length v4, p1

    .local v4, "len":I
    :goto_0
    if-ge v6, v4, :cond_a

    .line 259
    sub-int v7, v4, v6

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 260
    .local v5, "n":I
    const/16 v7, 0x10

    if-ge v6, v7, :cond_0

    .line 261
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    const/16 v7, 0x100

    if-ge v6, v7, :cond_1

    .line 264
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_1
    const/16 v7, 0x1000

    if-ge v6, v7, :cond_2

    .line 267
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 269
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 271
    const/4 v3, 0x0

    .line 272
    .local v3, "index":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_4

    .line 273
    rem-int/lit8 v7, v3, 0x8

    if-nez v7, :cond_3

    .line 274
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    :cond_3
    add-int v7, v6, v3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    add-int v7, v6, v3

    aget-byte v7, p1, v7

    and-int/lit8 v7, v7, 0xf

    shr-int/lit8 v7, v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    :cond_4
    if-ge v3, v9, :cond_6

    .line 281
    move v2, v3

    .local v2, "i":I
    :goto_2
    if-ge v2, v9, :cond_6

    .line 282
    rem-int/lit8 v7, v2, 0x8

    if-nez v7, :cond_5

    .line 283
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    :cond_5
    const-string v7, "  "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 288
    .end local v2    # "i":I
    :cond_6
    const-string v7, "    "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_9

    .line 290
    rem-int/lit8 v7, v3, 0x8

    if-nez v7, :cond_7

    .line 291
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    :cond_7
    add-int v7, v6, v3

    aget-byte v7, p1, v7

    and-int/lit16 v1, v7, 0xff

    .line 294
    .local v1, "ch":I
    if-le v1, v9, :cond_8

    const/16 v7, 0x7f

    if-ge v1, v7, :cond_8

    int-to-char v7, v1

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 294
    :cond_8
    const/16 v7, 0x2e

    goto :goto_4

    .line 296
    .end local v1    # "ch":I
    :cond_9
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    add-int/lit8 v7, v6, 0x20

    const/16 v8, 0x800

    if-lt v7, v8, :cond_b

    .line 300
    const-string v7, "....\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .end local v3    # "index":I
    .end local v5    # "n":I
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 258
    .restart local v3    # "index":I
    .restart local v5    # "n":I
    :cond_b
    add-int/lit8 v6, v6, 0x20

    goto/16 :goto_0
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 110
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_flags:I

    .line 111
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 95
    iput p1, p0, Ljavax/jmdns/impl/DNSMessage;->_id:I

    .line 96
    return-void
.end method
