.class final synthetic Lcom/phicomm/speaker/activity/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/b;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/b;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Landroid/view/View;)V

    return-void
.end method
