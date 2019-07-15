.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SpeakerSettingActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;-><init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

.field final synthetic b:Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$2;->b:Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity_ViewBinding$2;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->goToChangeName()V

    return-void
.end method
