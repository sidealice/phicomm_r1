.class Lcom/phicomm/speaker/presenter/t$2;
.super Lcom/phicomm/speaker/net/a/b;
.source "VoiceCommandPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/t;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/VoiceCommandBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/t;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/t;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/t$2;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/VoiceCommandBean;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$2;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->d(Lcom/phicomm/speaker/presenter/t;)V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$2;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$2;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/b/s;->a(Lcom/phicomm/speaker/bean/VoiceCommandBean;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 63
    check-cast p1, Lcom/phicomm/speaker/bean/VoiceCommandBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/presenter/t$2;->a(Lcom/phicomm/speaker/bean/VoiceCommandBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$2;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->e(Lcom/phicomm/speaker/presenter/t;)V

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$2;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/phicomm/speaker/presenter/t$2;->a:Lcom/phicomm/speaker/presenter/t;

    invoke-static {v0}, Lcom/phicomm/speaker/presenter/t;->b(Lcom/phicomm/speaker/presenter/t;)Lcom/phicomm/speaker/presenter/b/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/phicomm/speaker/presenter/b/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
