.class public final Lcom/lzy/okrx/HttpException;
.super Ljava/lang/Exception;
.source "HttpException.java"


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;

.field private final transient response:Lcom/lzy/okgo/model/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/model/a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/lzy/okgo/model/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/model/a<",
            "*>;)V"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->a()I

    move-result v0

    iput v0, p0, Lcom/lzy/okrx/HttpException;->code:I

    .line 14
    invoke-virtual {p1}, Lcom/lzy/okgo/model/a;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okrx/HttpException;->message:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/lzy/okrx/HttpException;->response:Lcom/lzy/okgo/model/a;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/lzy/okrx/HttpException;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/lzy/okrx/HttpException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public response()Lcom/lzy/okgo/model/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lzy/okgo/model/a<",
            "*>;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/lzy/okrx/HttpException;->response:Lcom/lzy/okgo/model/a;

    return-object v0
.end method
