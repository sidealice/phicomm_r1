.class final synthetic Lcom/phicomm/speaker/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

.field private final b:Lcom/phicomm/speaker/presenter/mqtt/a$a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Lcom/phicomm/speaker/presenter/mqtt/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/c;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/c;->b:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/c;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/c;->b:Lcom/phicomm/speaker/presenter/mqtt/a$a;

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/presenter/mqtt/a$a;Landroid/view/View;)V

    return-void
.end method
