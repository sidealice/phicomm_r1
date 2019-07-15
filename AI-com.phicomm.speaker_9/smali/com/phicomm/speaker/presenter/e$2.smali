.class Lcom/phicomm/speaker/presenter/e$2;
.super Ljava/lang/Object;
.source "HomePagePresenter.java"

# interfaces
.implements Lcom/unisound/lib/devices/callback/ILogMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/e;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/phicomm/speaker/presenter/e;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/e;I)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/e$2;->b:Lcom/phicomm/speaker/presenter/e;

    iput p2, p0, Lcom/phicomm/speaker/presenter/e$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3

    const-string v0, "HomePagePresenter"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChatLog onFailed code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pageNo = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/phicomm/speaker/presenter/e$2;->a:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/e$2;->b:Lcom/phicomm/speaker/presenter/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/e;->c(Lcom/phicomm/speaker/presenter/e;)Lcom/phicomm/speaker/presenter/b/e;

    move-result-object p1

    iget v0, p0, Lcom/phicomm/speaker/presenter/e$2;->a:I

    invoke-interface {p1, v0}, Lcom/phicomm/speaker/presenter/b/e;->c(I)V

    return-void
.end method

.method public onResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/LogMessage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "HomePagePresenter"

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChatLog onResult pageCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/e$2;->b:Lcom/phicomm/speaker/presenter/e;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/phicomm/speaker/presenter/e;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 233
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unisound/lib/msgcenter/bean/LogMessage;

    .line 234
    iget-object v4, p0, Lcom/phicomm/speaker/presenter/e$2;->b:Lcom/phicomm/speaker/presenter/e;

    invoke-static {v4, v3}, Lcom/phicomm/speaker/presenter/e;->a(Lcom/phicomm/speaker/presenter/e;Lcom/unisound/lib/msgcenter/bean/LogMessage;)[Lcom/phicomm/speaker/adapter/a/a/b;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 236
    aget-object v4, v3, v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/e$2;->b:Lcom/phicomm/speaker/presenter/e;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/e;->c(Lcom/phicomm/speaker/presenter/e;)Lcom/phicomm/speaker/presenter/b/e;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/phicomm/speaker/presenter/b/e;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
