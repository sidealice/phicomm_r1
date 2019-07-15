.class Lcom/phicomm/speaker/activity/ota/OtaCheckActivity$1;
.super Lcom/phicomm/speaker/presenter/b/l;
.source "OtaCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Lcom/phicomm/speaker/bean/RomUpdateBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ota/OtaCheckActivity$1;->a:Lcom/phicomm/speaker/activity/ota/OtaCheckActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/ota/b;->a(Landroid/app/Activity;Z)V

    return-void
.end method
