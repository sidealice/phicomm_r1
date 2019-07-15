.class Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;
.super Lcom/phicomm/speaker/presenter/b/c;
.source "RegisterCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/RegisterCodeActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 114
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j()V

    .line 115
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->d(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j()V

    .line 109
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j()V

    if-eqz p1, :cond_0

    const p1, 0x7f0f005c

    .line 128
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 129
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "mobile_phone"

    iget-object v3, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v3}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->b(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 130
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->finish()V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->e(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j()V

    .line 145
    iget-object v0, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->f(Lcom/phicomm/speaker/activity/RegisterCodeActivity;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j()V

    .line 121
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/phicomm/speaker/activity/RegisterCodeActivity$3;->a:Lcom/phicomm/speaker/activity/RegisterCodeActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/RegisterCodeActivity;->j()V

    .line 139
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
