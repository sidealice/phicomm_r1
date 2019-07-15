.class Lcom/phicomm/speaker/e/d$10;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/common/ICommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/e/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/c/d;

.field final synthetic b:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$10;->b:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$10;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 3

    const-string v0, "UnisoundManager"

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$10;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz v0, :cond_1

    const/16 v0, 0x7d0

    if-ne v0, p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$10;->a:Lcom/phicomm/speaker/e/c/d;

    const-string v1, "\u7ed1\u5b9a\u8d26\u53f7\u6210\u529f"

    invoke-interface {v0, p1, v1}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$10;->a:Lcom/phicomm/speaker/e/c/d;

    const-string v1, "\u7ed1\u5b9a\u8d26\u53f7\u5931\u8d25"

    invoke-interface {v0, p1, v1}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    .line 246
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$10;->b:Lcom/phicomm/speaker/e/d;

    invoke-static {p1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;)Lcom/unisound/lib/UnisAccountAssistant;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/unisound/lib/UnisAccountAssistant;->removeCallBack(Lcom/unisound/lib/common/ICommonCallback;)V

    return-void
.end method
