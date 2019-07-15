.class Lorg/xutils/http/RequestParams$1;
.super Ljava/lang/Object;
.source "RequestParams.java"

# interfaces
.implements Lorg/xutils/http/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/http/RequestParams;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/xutils/http/RequestParams;


# direct methods
.method constructor <init>(Lorg/xutils/http/RequestParams;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lorg/xutils/http/RequestParams$1;->a:Lorg/xutils/http/RequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParseKV(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lorg/xutils/http/RequestParams$1;->a:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0, p1, p2}, Lorg/xutils/http/RequestParams;->addParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
