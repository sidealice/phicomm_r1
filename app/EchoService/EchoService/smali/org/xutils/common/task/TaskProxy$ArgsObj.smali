.class Lorg/xutils/common/task/TaskProxy$ArgsObj;
.super Ljava/lang/Object;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/common/task/TaskProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArgsObj"
.end annotation


# instance fields
.field final args:[Ljava/lang/Object;

.field final taskProxy:Lorg/xutils/common/task/TaskProxy;


# direct methods
.method public varargs constructor <init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "taskProxy"    # Lorg/xutils/common/task/TaskProxy;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy$ArgsObj;->taskProxy:Lorg/xutils/common/task/TaskProxy;

    .line 149
    iput-object p2, p0, Lorg/xutils/common/task/TaskProxy$ArgsObj;->args:[Ljava/lang/Object;

    .line 150
    return-void
.end method
