.class Lcom/phicomm/speaker/views/refresh/RefreshLayout$2;
.super Ljava/lang/Object;
.source "RefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/views/refresh/RefreshLayout;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/views/refresh/RefreshLayout;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$2;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/phicomm/speaker/views/refresh/RefreshLayout$2;->a:Lcom/phicomm/speaker/views/refresh/RefreshLayout;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/refresh/RefreshLayout;->f()V

    return-void
.end method
