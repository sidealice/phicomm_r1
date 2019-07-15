.class Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;
.super Ljava/lang/Object;
.source "ChangePhoneNumberActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/views/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 188
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;I)I

    .line 189
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->c(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->e(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$5;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->f(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Lcom/phicomm/speaker/views/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/p;->dismiss()V

    return-void
.end method
