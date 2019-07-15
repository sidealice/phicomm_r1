.class Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;
.super Lcom/baidu/location/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;


# direct methods
.method constructor <init>(Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;

    .prologue
    iput-object p1, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;->this$0:Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;

    invoke-direct {p0}, Lcom/baidu/location/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/c;)V
    .locals 2
    .param p1, "bdLocation"    # Lcom/baidu/location/c;

    .prologue
    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;->this$0:Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;

    invoke-static {v0, p1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->access$000(Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;Lcom/baidu/location/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;->this$0:Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;

    invoke-static {p1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationInfoParser;->parser(Lcom/baidu/location/c;)Lcom/unisound/vui/common/location/bean/LocationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->onLocationSuccess(Lcom/unisound/vui/common/location/bean/LocationInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;->this$0:Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;

    iget-object v1, p0, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy$1;->this$0:Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;

    invoke-static {v1, p1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->access$100(Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;Lcom/baidu/location/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/common/location/strategy/baidu/BaiduLocationStrategy;->onLocationFail(Ljava/lang/String;)V

    goto :goto_0
.end method
