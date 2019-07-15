.class Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;
.super Ljava/lang/Object;
.source "PersonalInformationActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/PersonalInformationActivity;->m()V
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

    .line 288
    iput-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->e(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    new-instance p1, Lcom/phicomm/speaker/bean/AccountDetailsBean;

    invoke-direct {p1}, Lcom/phicomm/speaker/bean/AccountDetailsBean;-><init>()V

    .line 293
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->d(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/bean/AccountDetailsBean;->setJob(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->f(Lcom/phicomm/speaker/activity/PersonalInformationActivity;)Lcom/phicomm/speaker/presenter/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/s;->a(Lcom/phicomm/speaker/bean/AccountDetailsBean;)V

    .line 295
    iget-object p1, p0, Lcom/phicomm/speaker/activity/PersonalInformationActivity$4;->a:Lcom/phicomm/speaker/activity/PersonalInformationActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/PersonalInformationActivity;->a(Lcom/phicomm/speaker/activity/PersonalInformationActivity;Z)Z

    return-void
.end method
