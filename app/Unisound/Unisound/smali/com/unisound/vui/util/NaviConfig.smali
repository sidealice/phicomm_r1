.class public Lcom/unisound/vui/util/NaviConfig;
.super Ljava/lang/Object;


# static fields
.field public static final AMAPCARAUTOPACKAGENAME:Ljava/lang/String; = "com.autonavi.amapauto"

.field public static final BAIDUNAVIPACKAGENAME:Ljava/lang/String; = "com.baidu.navi"

.field public static final FMTYPE:Ljava/lang/String; = "FmType"

.field public static final ISUSERDEALMUSICOPRS:Ljava/lang/String; = "isUserDealMusciOprs"

.field public static final MAPOPRSARRAYID:Ljava/lang/String; = "MapOprsArrayId"

.field public static final MAPPACKAGENAME:Ljava/lang/String; = "MapAppPackageName"

.field public static final MAPTYPE:Ljava/lang/String; = "MapType"

.field public static final MUSICTYPE:Ljava/lang/String; = "MusicType"

.field public static final NAVIBUILD:Ljava/lang/String; = "NaviBuild"

.field public static configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static context:Landroid/content/Context;

.field public static mapAndPackageName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mapOprsToMethod:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mapOprsToUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static naviSuportWakeUpWords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/NaviConfig;->mapOprsToUrl:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/NaviConfig;->mapOprsToMethod:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/NaviConfig;->naviSuportWakeUpWords:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/NaviConfig;->mapAndPackageName:Ljava/util/Map;

    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->mapAndPackageName:Ljava/util/Map;

    const-string v1, "amap_map"

    const-string v2, "com.autonavi.amapauto"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->mapAndPackageName:Ljava/util/Map;

    const-string v1, "baidu_map"

    const-string v2, "com.baidu.navi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unisound/vui/util/NaviConfig;->configs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAfterExitNavi()V
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->naviSuportWakeUpWords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->mapOprsToUrl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->mapOprsToMethod:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static getAmapCarpatuoPacname(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->mapAndPackageName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getNaviConfig(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static initMapOprsAndOprWpWords()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x0

    const-string v0, "MapOprsArrayId"

    invoke-static {v0}, Lcom/unisound/vui/util/NaviConfig;->getNaviConfig(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/unisound/vui/util/NaviConfig;->context:Landroid/content/Context;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/unisound/vui/util/NaviConfig;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v0, v3

    if-lez v0, :cond_5

    move v0, v1

    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_5

    aget-object v2, v3, v0

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v2, v4, v1

    if-eqz v2, :cond_4

    array-length v2, v4

    if-lez v2, :cond_4

    aget-object v2, v4, v1

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget-object v2, v4, v1

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v2, v1

    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_4

    aget-object v6, v5, v2

    if-eqz v6, :cond_1

    sget-object v6, Lcom/unisound/vui/util/NaviConfig;->naviSuportWakeUpWords:Ljava/util/List;

    aget-object v7, v5, v2

    const-string v8, "\\s*"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, v4, v11

    if-eqz v6, :cond_0

    sget-object v6, Lcom/unisound/vui/util/NaviConfig;->mapOprsToMethod:Ljava/util/Map;

    aget-object v7, v5, v2

    aget-object v8, v4, v11

    const-string v9, "\\s*"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    array-length v6, v4

    if-le v6, v12, :cond_1

    sget-object v6, Lcom/unisound/vui/util/NaviConfig;->mapOprsToUrl:Ljava/util/Map;

    aget-object v7, v5, v2

    aget-object v8, v4, v12

    const-string v9, "\\s*"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/unisound/vui/util/NaviConfig;->naviSuportWakeUpWords:Ljava/util/List;

    aget-object v5, v4, v1

    const-string v6, "\\s*"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v2, v4

    if-le v2, v11, :cond_3

    sget-object v2, Lcom/unisound/vui/util/NaviConfig;->mapOprsToMethod:Ljava/util/Map;

    aget-object v5, v4, v1

    aget-object v6, v4, v11

    const-string v7, "\\s*"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    array-length v2, v4

    if-le v2, v12, :cond_4

    sget-object v2, Lcom/unisound/vui/util/NaviConfig;->mapOprsToUrl:Ljava/util/Map;

    aget-object v5, v4, v1

    aget-object v4, v4, v12

    const-string v6, "\\s*"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    sput-object p0, Lcom/unisound/vui/util/NaviConfig;->context:Landroid/content/Context;

    return-void
.end method

.method public static setDefaultMap(Ljava/lang/String;I)V
    .locals 2
    .param p0, "defaultMapType"    # Ljava/lang/String;
    .param p1, "resId"    # I

    .prologue
    const-string v0, "MapType"

    invoke-static {v0, p0}, Lcom/unisound/vui/util/NaviConfig;->setNaviConfig(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "MapAppPackageName"

    const-string v1, "com.autonavi.amapauto"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/NaviConfig;->setNaviConfig(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "MapOprsArrayId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/NaviConfig;->setNaviConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setNaviConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    sget-object v0, Lcom/unisound/vui/util/NaviConfig;->configs:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setUserMap(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 3
    .param p0, "naviBuild"    # Ljava/lang/Object;
    .param p1, "mapAppName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    const-string v0, "NaviBuild"

    invoke-static {v0, p0}, Lcom/unisound/vui/util/NaviConfig;->setNaviConfig(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "MapAppPackageName"

    invoke-static {v0, p1}, Lcom/unisound/vui/util/NaviConfig;->setNaviConfig(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "MUSICANDFM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----mapAppName---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MapOprsArrayId"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/NaviConfig;->setNaviConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
