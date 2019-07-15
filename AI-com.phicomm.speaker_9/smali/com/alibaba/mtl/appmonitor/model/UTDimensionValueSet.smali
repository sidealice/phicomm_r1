.class public Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;
.super Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
.source "UTDimensionValueSet.java"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/alibaba/mtl/log/model/LogField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/Map;)Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object p0

    check-cast p0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;

    return-object p0
.end method


# virtual methods
.method public clean()V
    .locals 0

    .line 54
    invoke-super {p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->clean()V

    return-void
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->fill([Ljava/lang/Object;)V

    return-void
.end method

.method public getEventId()Ljava/lang/Integer;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/model/UTDimensionValueSet;->map:Ljava/util/Map;

    sget-object v1, Lcom/alibaba/mtl/log/model/LogField;->EVENTID:Lcom/alibaba/mtl/log/model/LogField;

    invoke-virtual {v1}, Lcom/alibaba/mtl/log/model/LogField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 39
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/mtl/appmonitor/f/a;->a(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
