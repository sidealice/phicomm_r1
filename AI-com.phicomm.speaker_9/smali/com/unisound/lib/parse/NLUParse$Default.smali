.class public final Lcom/unisound/lib/parse/NLUParse$Default;
.super Ljava/lang/Object;
.source "NLUParse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/lib/parse/NLUParse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/parse/NLUParse;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cn.yunzhisheng.music"

    .line 40
    new-instance v2, Lcom/unisound/lib/parse/MusicParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/MusicParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn.yunzhisheng.audio"

    .line 41
    new-instance v2, Lcom/unisound/lib/parse/AudioParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/AudioParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn.yunzhisheng.alarm"

    .line 42
    new-instance v2, Lcom/unisound/lib/parse/AlarmParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/AlarmParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn.yunzhisheng.reminder"

    .line 43
    new-instance v2, Lcom/unisound/lib/parse/ReminderParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/ReminderParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn.yunzhisheng.stock"

    .line 44
    new-instance v2, Lcom/unisound/lib/parse/StockNLUParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/StockNLUParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn.yunzhisheng.weather"

    .line 45
    new-instance v2, Lcom/unisound/lib/parse/WeatherParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/WeatherParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn.yunzhisheng.note"

    .line 46
    new-instance v2, Lcom/unisound/lib/parse/NoteParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/NoteParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cn.yunzhisheng.news"

    .line 47
    new-instance v2, Lcom/unisound/lib/parse/NewsParse;

    invoke-direct {v2}, Lcom/unisound/lib/parse/NewsParse;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
