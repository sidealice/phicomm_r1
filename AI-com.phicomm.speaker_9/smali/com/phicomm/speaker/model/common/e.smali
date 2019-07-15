.class public abstract Lcom/phicomm/speaker/model/common/e;
.super Ljava/lang/Object;
.source "PagingHandler.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 15
    iget v0, p0, Lcom/phicomm/speaker/model/common/e;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/phicomm/speaker/model/common/e;->b:I

    .line 26
    iget v0, p0, Lcom/phicomm/speaker/model/common/e;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/phicomm/speaker/model/common/e;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-lt v0, p1, :cond_0

    const-string p1, "no more page: pageCount=%s."

    .line 27
    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lcom/phicomm/speaker/model/common/e;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p0, v2}, Lcom/phicomm/speaker/model/common/e;->a(Z)V

    :cond_0
    return-void
.end method

.method protected abstract a(Z)V
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/phicomm/speaker/model/common/e;->a:I

    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Lcom/phicomm/speaker/model/common/e;->a(Z)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 34
    iget v0, p0, Lcom/phicomm/speaker/model/common/e;->a:I

    iget v1, p0, Lcom/phicomm/speaker/model/common/e;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/phicomm/speaker/model/common/e;->a:I

    return v0
.end method
