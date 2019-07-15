.class Lorg/xutils/http/HttpTask$1;
.super Ljava/lang/Object;
.source "HttpTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/HttpTask;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/http/HttpTask;


# direct methods
.method constructor <init>(Lorg/xutils/http/HttpTask;)V
    .locals 0
    .param p1, "this$0"    # Lorg/xutils/http/HttpTask;

    .prologue
    .line 472
    .local p0, "this":Lorg/xutils/http/HttpTask$1;, "Lorg/xutils/http/HttpTask$1;"
    iput-object p1, p0, Lorg/xutils/http/HttpTask$1;->this$0:Lorg/xutils/http/HttpTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 475
    .local p0, "this":Lorg/xutils/http/HttpTask$1;, "Lorg/xutils/http/HttpTask$1;"
    iget-object v0, p0, Lorg/xutils/http/HttpTask$1;->this$0:Lorg/xutils/http/HttpTask;

    invoke-static {v0}, Lorg/xutils/http/HttpTask;->access$100(Lorg/xutils/http/HttpTask;)V

    .line 476
    return-void
.end method
