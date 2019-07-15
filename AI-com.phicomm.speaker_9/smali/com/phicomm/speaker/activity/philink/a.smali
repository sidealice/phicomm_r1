.class final synthetic Lcom/phicomm/speaker/activity/philink/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/phicomm/speaker/c/c;


# instance fields
.field private final a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/phicomm/speaker/activity/philink/a;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    iput-object p2, p0, Lcom/phicomm/speaker/activity/philink/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/a;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/philink/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(Ljava/lang/String;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
