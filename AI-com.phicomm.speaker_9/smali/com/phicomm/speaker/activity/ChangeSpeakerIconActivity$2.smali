.class Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;
.super Ljava/lang/Object;
.source "ChangeSpeakerIconActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/adapter/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/net/resultbean/GroupPic;Landroid/view/View;I)V
    .locals 0

    .line 94
    iget-object p2, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {p2, p3}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;I)I

    .line 95
    iget-object p2, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/net/resultbean/GroupPic;->getPic_group_id()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-object p2, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {p2, p1}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->a(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;Lcom/phicomm/speaker/net/resultbean/GroupPic;)Lcom/phicomm/speaker/net/resultbean/GroupPic;

    .line 97
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->g(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Lcom/phicomm/speaker/presenter/d;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->e(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;

    invoke-static {p3}, Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;->f(Lcom/phicomm/speaker/activity/ChangeSpeakerIconActivity;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/presenter/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
