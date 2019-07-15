.class Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$3;
.super Ljava/lang/Object;
.source "UserInfoRegisterActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$3;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$3;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->tvJob:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
