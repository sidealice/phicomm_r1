.class public Lcom/jph/takephoto/model/TException;
.super Ljava/lang/Exception;
.source "TException.java"


# instance fields
.field detailMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/jph/takephoto/model/TExceptionType;)V
    .locals 1

    .line 10
    invoke-virtual {p1}, Lcom/jph/takephoto/model/TExceptionType;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/jph/takephoto/model/TExceptionType;->getStringValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jph/takephoto/model/TException;->detailMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetailMessage()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/jph/takephoto/model/TException;->detailMessage:Ljava/lang/String;

    return-object v0
.end method
