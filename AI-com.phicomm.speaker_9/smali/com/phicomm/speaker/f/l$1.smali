.class final Lcom/phicomm/speaker/f/l$1;
.super Ljava/lang/Object;
.source "GetPhotoUtils.java"

# interfaces
.implements Ltop/zibin/luban/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/f/l;->a(Landroid/app/Activity;Landroid/net/Uri;Lcom/phicomm/speaker/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/c/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/c/d;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/phicomm/speaker/f/l$1;->a:Lcom/phicomm/speaker/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/phicomm/speaker/f/l$1;->a:Lcom/phicomm/speaker/c/d;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/phicomm/speaker/f/l$1;->a:Lcom/phicomm/speaker/c/d;

    invoke-interface {v0}, Lcom/phicomm/speaker/c/d;->e()V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/phicomm/speaker/f/l$1;->a:Lcom/phicomm/speaker/c/d;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/phicomm/speaker/f/l$1;->a:Lcom/phicomm/speaker/c/d;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/c/d;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/phicomm/speaker/f/l$1;->a:Lcom/phicomm/speaker/c/d;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/phicomm/speaker/f/l$1;->a:Lcom/phicomm/speaker/c/d;

    invoke-interface {v0, p1}, Lcom/phicomm/speaker/c/d;->a(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
