.class Lcom/phicomm/speaker/manager/d$2;
.super Ljava/lang/Object;
.source "UpdateManager.java"

# interfaces
.implements Lcom/phicomm/speaker/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/manager/d;->a(Lcom/phicomm/speaker/bean/AppUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/bean/AppUpdate;

.field final synthetic b:Lcom/phicomm/speaker/manager/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/phicomm/speaker/manager/d$2;->b:Lcom/phicomm/speaker/manager/d;

    iput-object p2, p0, Lcom/phicomm/speaker/manager/d$2;->a:Lcom/phicomm/speaker/bean/AppUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$2;->b:Lcom/phicomm/speaker/manager/d;

    iget-object p2, p0, Lcom/phicomm/speaker/manager/d$2;->a:Lcom/phicomm/speaker/bean/AppUpdate;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/manager/d;->c(Lcom/phicomm/speaker/manager/d;Lcom/phicomm/speaker/bean/AppUpdate;)Lcom/phicomm/speaker/bean/AppUpdate;

    .line 119
    iget-object p1, p0, Lcom/phicomm/speaker/manager/d$2;->b:Lcom/phicomm/speaker/manager/d;

    invoke-static {p1}, Lcom/phicomm/speaker/manager/d;->d(Lcom/phicomm/speaker/manager/d;)V

    return-void
.end method
