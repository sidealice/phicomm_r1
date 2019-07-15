.class Lcom/phicomm/speaker/activity/VoiceCommandActivity$1;
.super Ljava/lang/Object;
.source "VoiceCommandActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 74
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    const-class v2, Lcom/phicomm/speaker/activity/VoiceCommandDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "commandId"

    .line 75
    iget-object v2, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->a(Lcom/phicomm/speaker/activity/VoiceCommandActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/phicomm/speaker/bean/VoiceCommandBean;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/VoiceCommandBean;->getCommand_id()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object p1, p0, Lcom/phicomm/speaker/activity/VoiceCommandActivity$1;->a:Lcom/phicomm/speaker/activity/VoiceCommandActivity;

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/VoiceCommandActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
