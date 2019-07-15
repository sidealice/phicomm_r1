.class public Lcom/unisound/lib/utils/NluParseUtils;
.super Ljava/lang/Object;
.source "NluParseUtils.java"


# static fields
.field public static final ALARM_SET_TIMING:Ljava/lang/String; = "ALARM_SET_TIMING"

.field public static final CHAT_STYLE_BAIKE:Ljava/lang/String; = "baike"

.field public static final CHAT_STYLE_CALCULATOR:Ljava/lang/String; = "calculator"

.field public static final CHAT_STYLE_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final CHAT_STYLE_ILLEGAL:Ljava/lang/String; = "illegal"

.field public static final CHAT_STYLE_JOKE:Ljava/lang/String; = "joke"

.field public static final CHAT_STYLE_POEM:Ljava/lang/String; = "poem"

.field public static final CHAT_STYLE_TRAFFIC:Ljava/lang/String; = "traffic.control"

.field public static final CHAT_STYLE_TRANSLATION:Ljava/lang/String; = "translation"

.field public static final CHAT_STYLE_TTS_ANWSER:Ljava/lang/String; = "TTS_ANWSER"

.field public static final FEEDBACK_DEFAULT:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "NluParseUtils"

.field private static final mixtureProcessor:Lnluparser/c;

.field private static nluParseHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/parse/NLUParse;",
            ">;"
        }
    .end annotation
.end field

.field private static final nluProcessor:Lnluparser/e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Lnluparser/c$a;

    invoke-direct {v0}, Lnluparser/c$a;-><init>()V

    invoke-virtual {v0}, Lnluparser/c$a;->a()Lnluparser/c;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/utils/NluParseUtils;->mixtureProcessor:Lnluparser/c;

    .line 77
    new-instance v0, Lnluparser/e$a;

    invoke-direct {v0}, Lnluparser/e$a;-><init>()V

    const-string v1, "cn.yunzhisheng.error"

    new-instance v2, Lcom/unisound/lib/utils/NluParseUtils$1;

    invoke-direct {v2}, Lcom/unisound/lib/utils/NluParseUtils$1;-><init>()V

    .line 80
    invoke-virtual {v2}, Lcom/unisound/lib/utils/NluParseUtils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lnluparser/e$a;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Lnluparser/e$a;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lnluparser/e$a;->a()Lnluparser/e;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/utils/NluParseUtils;->nluProcessor:Lnluparser/e;

    .line 81
    new-instance v0, Lcom/unisound/lib/parse/NLUParse$Default;

    invoke-direct {v0}, Lcom/unisound/lib/parse/NLUParse$Default;-><init>()V

    invoke-virtual {v0}, Lcom/unisound/lib/parse/NLUParse$Default;->get()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/unisound/lib/utils/NluParseUtils;->nluParseHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogMessage(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;)Lcom/unisound/lib/msgcenter/bean/LogMessage;
    .locals 3

    const-string v0, "NluParseUtils"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/unisound/lib/utils/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/unisound/lib/utils/NluParseUtils;->mixtureProcessor:Lnluparser/c;

    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnluparser/c;->a(Ljava/lang/String;)Lnluparser/scheme/Mixture;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/unisound/lib/msgcenter/bean/LogMessage;

    invoke-direct {v1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;-><init>()V

    .line 93
    invoke-static {p0, v0, v1}, Lcom/unisound/lib/utils/NluParseUtils;->setLogMessageData(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 94
    invoke-static {v0, v1}, Lcom/unisound/lib/utils/NluParseUtils;->handleASRdata(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    return-object v1
.end method

.method public static getLogMsgFromServer(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/unisound/lib/msgcenter/bean/LogMessage;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;

    .line 293
    invoke-static {v1}, Lcom/unisound/lib/utils/NluParseUtils;->getLogMessage(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;)Lcom/unisound/lib/msgcenter/bean/LogMessage;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    invoke-virtual {v1}, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->isUserEdited()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setUserEdited(Z)V

    .line 298
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getServiceType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 217
    invoke-static {}, Lcom/unisound/lib/utils/GlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "getServiceType context is null"

    .line 219
    invoke-static {p0}, Lcom/unisound/lib/utils/LogMgr;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "NluParseUtils"

    .line 222
    invoke-static {v0, p0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cn.yunzhisheng.audio"

    .line 223
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x4e21

    return p0

    :cond_1
    const-string v0, "cn.yunzhisheng.music"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v0, "cn.yunzhisheng.chat"

    .line 227
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "poem"

    .line 228
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x4e25

    return p0

    :cond_3
    const-string p0, "calendar"

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x4e26

    return p0

    :cond_4
    const-string p0, "calculator"

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x4e27

    return p0

    :cond_5
    const-string p0, "joke"

    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x4e28

    return p0

    :cond_6
    const-string p0, "translation"

    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0x4e29

    return p0

    :cond_7
    const-string p0, "baike"

    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x4e2a

    return p0

    :cond_8
    const-string p0, "traffic.control"

    .line 240
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x4e2d

    return p0

    :cond_9
    const-string p0, "illegal"

    .line 242
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0x4e2e

    return p0

    :cond_a
    const/16 p0, 0x4e34

    return p0

    :cond_b
    const-string v0, "TTS_ANWSER"

    .line 247
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/16 p0, 0x4e36

    return p0

    :cond_c
    const-string p1, "cn.yunzhisheng.weather"

    .line 250
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p0, 0x4e23

    return p0

    :cond_d
    const-string p1, "cn.yunzhisheng.stock"

    .line 252
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p0, 0x4e24

    return p0

    :cond_e
    const-string p1, "cn.yunzhisheng.setting"

    .line 254
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/16 p0, 0x4e2b

    return p0

    :cond_f
    const-string p1, "cn.yunzhisheng.wakeupword"

    .line 256
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/16 p0, 0x4e2c

    return p0

    :cond_10
    const-string p1, "cn.yunzhisheng.reminder"

    .line 258
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/16 p0, 0x4e2f

    return p0

    :cond_11
    const-string p1, "cn.yunzhisheng.alarm"

    .line 260
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p0, "ALARM_SET_TIMING"

    .line 261
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/16 p0, 0x4e35

    return p0

    :cond_12
    const/16 p0, 0x4e30

    return p0

    :cond_13
    const-string p1, "cn.yunzhisheng.note"

    .line 266
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/16 p0, 0x4e31

    return p0

    :cond_14
    const-string p1, "cn.yunzhisheng.setting.common"

    .line 268
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    const/16 p0, 0x4e32

    return p0

    :cond_15
    const-string p1, "cn.yunzhisheng.error"

    .line 270
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const/16 p0, 0x5207

    return p0

    :cond_16
    const-string p1, "cn.yunzhisheng.news"

    .line 272
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/16 p0, 0x4e33

    return p0

    :cond_17
    const-string p1, "cn.yunzhisheng.health.info"

    .line 274
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/16 p0, 0x4e37

    return p0

    :cond_18
    const-string p1, "cn.yunzhisheng.setting.air"

    .line 276
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/16 p0, 0x4e38

    return p0

    :cond_19
    const-string p1, "cn.yunzhisheng.broadcast"

    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p0, 0x4e39

    return p0

    :cond_1a
    const/16 p0, 0x55ef

    return p0

    :cond_1b
    :goto_0
    const/16 p0, 0x4e22

    return p0
.end method

.method private static handleASRdata(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 137
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/NluParseUtils;->setLocalAsr(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/NluParseUtils;->onlineASR(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    :goto_0
    return-void
.end method

.method private static onlineASR(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 2

    .line 148
    :try_start_0
    invoke-static {p0, p1}, Lcom/unisound/lib/utils/NluParseUtils;->setLogMessage(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lnluparser/scheme/NLU;

    move-result-object p0

    .line 149
    sget-object v0, Lcom/unisound/lib/utils/NluParseUtils;->nluParseHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/unisound/lib/utils/NluParseUtils;->nluParseHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/lib/parse/NLUParse;

    invoke-interface {v0, p1, p0}, Lcom/unisound/lib/parse/NLUParse;->parseResult(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse netAsr exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/lib/utils/LogMgr;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static removePolyphoneType(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getTtsDataValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getTtsDataValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "<py>[\\d|\\w]+</py>"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-virtual {p1, p0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setTtsAnswer(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static setFeedBackType(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->getFeedBackType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    .line 119
    invoke-virtual {p1, p0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setFeedBackType(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->getFeedBackType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setFeedBackType(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static setLocalAsr(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getLocalASRList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnluparser/scheme/LocalASR;

    .line 162
    invoke-virtual {p0}, Lnluparser/scheme/LocalASR;->getEngineMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wakeup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4e2c

    .line 163
    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setMessageType(I)V

    .line 164
    invoke-virtual {p0}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setRecongniseResult(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_0
    sget-object v0, Lcom/unisound/lib/utils/NluParseUtils;->nluProcessor:Lnluparser/e;

    invoke-virtual {p0}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnluparser/e;->a(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object p0

    const-string v0, ""

    const-string v1, ""

    .line 167
    invoke-static {p1, p0, v0, v1}, Lcom/unisound/lib/utils/NluParseUtils;->setServiceType(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setRecongniseResult(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x1

    .line 170
    invoke-virtual {p1, p0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setLocalRec(Z)V

    return-void
.end method

.method private static setLogMessage(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)Lnluparser/scheme/NLU;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 176
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getNetASRList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getNetASRList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getNetASRList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/NetASR;

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/unisound/lib/net/UserRequestClient;->getBaseUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lnluparser/scheme/NetASR;->getSessionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setRecordUrl(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lnluparser/scheme/Mixture;->getNluList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnluparser/scheme/NLU;

    const-string v0, ""

    const-string v2, ""

    .line 184
    invoke-virtual {p0}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 185
    invoke-virtual {p0}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v2

    .line 188
    :cond_1
    invoke-virtual {p1, v1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setLocalRec(Z)V

    .line 190
    invoke-virtual {p0}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setRecongniseResult(Ljava/lang/String;)V

    .line 192
    invoke-static {p1, p0, v0}, Lcom/unisound/lib/utils/NluParseUtils;->setTTSAnswer(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {p1, p0, v0, v2}, Lcom/unisound/lib/utils/NluParseUtils;->setServiceType(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static setLogMessageData(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 0

    .line 101
    invoke-static {p1, p2}, Lcom/unisound/lib/utils/NluParseUtils;->removePolyphoneType(Lnluparser/scheme/Mixture;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 102
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->getLogId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setLogId(Ljava/lang/String;)V

    .line 103
    invoke-static {p0, p2}, Lcom/unisound/lib/utils/NluParseUtils;->setFeedBackType(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 104
    invoke-static {p0, p2}, Lcom/unisound/lib/utils/NluParseUtils;->setTimeStamp(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V

    .line 105
    invoke-static {}, Lcom/unisound/lib/utils/SystemUitls;->getCurrentTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setReceivedTime(Ljava/lang/String;)V

    return-void
.end method

.method private static setServiceType(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 211
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/unisound/lib/utils/NluParseUtils;->getServiceType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 212
    invoke-virtual {p0, p1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setMessageType(I)V

    return-void
.end method

.method private static setTTSAnswer(Lcom/unisound/lib/msgcenter/bean/LogMessage;Lnluparser/scheme/NLU;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 200
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object p2

    invoke-virtual {p2}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object p2

    .line 202
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object p1

    invoke-virtual {p1}, Lnluparser/scheme/General;->getStyle()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p2}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setTtsAnswerExtra(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private static setTimeStamp(Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;Lcom/unisound/lib/msgcenter/bean/LogMessage;)V
    .locals 2

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lcom/unisound/lib/msgcenter/bean/VoiceChatMessage;->getCreateTime()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unisound/lib/utils/UnisTimeUtils;->string2Millis(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/unisound/lib/msgcenter/bean/LogMessage;->setCreateTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 130
    invoke-static {p0}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
