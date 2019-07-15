.class Lcom/phicomm/speaker/fragment/MineFragment$2;
.super Ljava/lang/Object;
.source "MineFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/MineFragment;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/MineFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/MineFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$2;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment$2;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Lcom/phicomm/speaker/fragment/MineFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/MineFragment$2;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/MineFragment$2;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/MineFragment;->b(Lcom/phicomm/speaker/fragment/MineFragment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/MineFragment$2;->a:Lcom/phicomm/speaker/fragment/MineFragment;

    invoke-static {v1}, Lcom/phicomm/speaker/fragment/MineFragment;->c(Lcom/phicomm/speaker/fragment/MineFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/phicomm/speaker/fragment/MineFragment;->a(Lcom/phicomm/speaker/fragment/MineFragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
