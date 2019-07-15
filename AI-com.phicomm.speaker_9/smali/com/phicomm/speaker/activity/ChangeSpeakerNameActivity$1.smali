.class Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$1;
.super Ljava/lang/Object;
.source "ChangeSpeakerNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mIvDelete:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity$1;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ChangeSpeakerNameActivity;->mIvDelete:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
