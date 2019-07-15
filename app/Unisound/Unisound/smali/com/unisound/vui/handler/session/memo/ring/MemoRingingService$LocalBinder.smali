.class public Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;
.super Landroid/os/Binder;
.source "MemoRingingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;->this$0:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService$LocalBinder;->this$0:Lcom/unisound/vui/handler/session/memo/ring/MemoRingingService;

    return-object v0
.end method
