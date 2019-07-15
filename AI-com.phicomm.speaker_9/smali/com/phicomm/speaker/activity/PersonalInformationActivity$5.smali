.class Lcom/phicomm/speaker/activity/PersonalInformationActivity$5;
.super Ljava/lang/Object;
.source "PersonalInformationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/PersonalInformationActivity;->tv_exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$5;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 406
    invoke-static {}, Lcom/phicomm/speaker/d/c;->b()V

    .line 407
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$5;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->g(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/presenter/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/c;->e()V

    return-void
.end method
