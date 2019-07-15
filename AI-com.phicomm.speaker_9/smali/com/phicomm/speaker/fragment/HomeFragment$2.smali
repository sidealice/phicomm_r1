.class Lcom/phicomm/speaker/fragment/HomeFragment$2;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Lcom/phicomm/speaker/views/refresh/RefreshLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/fragment/HomeFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/fragment/HomeFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment$2;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 2

    const-string p1, "HomeFragment"

    const-string v0, "onPullDownRefresh"

    .line 184
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object p1, p0, Lcom/phicomm/speaker/fragment/HomeFragment$2;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-static {p1}, Lcom/phicomm/speaker/fragment/HomeFragment;->d(Lcom/phicomm/speaker/fragment/HomeFragment;)Lcom/phicomm/speaker/presenter/e;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/fragment/HomeFragment$2;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-static {v0}, Lcom/phicomm/speaker/fragment/HomeFragment;->b(Lcom/phicomm/speaker/fragment/HomeFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/phicomm/speaker/fragment/HomeFragment$2;->a:Lcom/phicomm/speaker/fragment/HomeFragment;

    invoke-static {v1}, Lcom/phicomm/speaker/fragment/HomeFragment;->c(Lcom/phicomm/speaker/fragment/HomeFragment;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/presenter/e;->a(II)V

    return-void
.end method
