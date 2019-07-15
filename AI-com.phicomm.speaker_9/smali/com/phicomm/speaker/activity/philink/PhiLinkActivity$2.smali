.class Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$2;
.super Ljava/lang/Object;
.source "PhiLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/util/List;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$2;->b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$2;->b:Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkActivity;Ljava/util/List;)V

    return-void
.end method
