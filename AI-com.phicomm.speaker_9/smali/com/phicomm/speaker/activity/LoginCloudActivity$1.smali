.class Lcom/phicomm/speaker/activity/LoginCloudActivity$1;
.super Ljava/lang/Object;
.source "LoginCloudActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/f/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/LoginCloudActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/LoginCloudActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a(Lcom/phicomm/speaker/activity/LoginCloudActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mLlBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a(Lcom/phicomm/speaker/activity/LoginCloudActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a(Lcom/phicomm/speaker/activity/LoginCloudActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a(Lcom/phicomm/speaker/activity/LoginCloudActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mLlTop:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->a(Lcom/phicomm/speaker/activity/LoginCloudActivity;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 106
    iget-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$1;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/LoginCloudActivity;->mLlTop:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method
