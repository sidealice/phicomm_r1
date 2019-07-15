.class Lcom/phicomm/speaker/manager/d$4;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/bean/AppUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/manager/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/manager/d;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/phicomm/speaker/manager/d$4;->a:Lcom/phicomm/speaker/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 149
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$4;->a:Lcom/phicomm/speaker/manager/d;

    invoke-virtual {p1}, Lcom/phicomm/speaker/manager/d;->b()V

    return-void
.end method
