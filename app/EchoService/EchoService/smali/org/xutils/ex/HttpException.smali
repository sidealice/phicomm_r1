.class public Lorg/xutils/ex/HttpException;
.super Lorg/xutils/ex/BaseException;
.source "HttpException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I

.field private customMessage:Ljava/lang/String;

.field private errorCode:Ljava/lang/String;

.field private result:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lorg/xutils/ex/BaseException;-><init>(Ljava/lang/String;)V

    .line 34
    iput p1, p0, Lorg/xutils/ex/HttpException;->code:I

    .line 35
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lorg/xutils/ex/HttpException;->code:I

    return v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xutils/ex/HttpException;->errorCode:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/xutils/ex/HttpException;->code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xutils/ex/HttpException;->errorCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/xutils/ex/HttpException;->customMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/xutils/ex/HttpException;->customMessage:Ljava/lang/String;

    .line 65
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/xutils/ex/BaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/xutils/ex/HttpException;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 38
    iput p1, p0, Lorg/xutils/ex/HttpException;->code:I

    .line 39
    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/xutils/ex/HttpException;->errorCode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lorg/xutils/ex/HttpException;->customMessage:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/xutils/ex/HttpException;->result:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/ex/HttpException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xutils/ex/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/ex/HttpException;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
