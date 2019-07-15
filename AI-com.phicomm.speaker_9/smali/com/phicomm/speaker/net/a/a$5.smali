.class Lcom/phicomm/speaker/net/a/a$5;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Lcom/phicomm/speaker/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/net/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/phicomm/speaker/net/a/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/net/a/a;Landroid/app/Activity;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/phicomm/speaker/net/a/a$5;->b:Lcom/phicomm/speaker/net/a/a;

    iput-object p2, p0, Lcom/phicomm/speaker/net/a/a$5;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 2

    .line 375
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/f/c;->c()V

    .line 376
    iget-object p1, p0, Lcom/phicomm/speaker/net/a/a$5;->b:Lcom/phicomm/speaker/net/a/a;

    invoke-static {p1}, Lcom/phicomm/speaker/net/a/a;->b(Lcom/phicomm/speaker/net/a/a;)Lcom/phicomm/speaker/views/m;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/m;->dismiss()V

    .line 377
    iget-object p1, p0, Lcom/phicomm/speaker/net/a/a$5;->a:Landroid/app/Activity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$5;->a:Landroid/app/Activity;

    const-class v1, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
