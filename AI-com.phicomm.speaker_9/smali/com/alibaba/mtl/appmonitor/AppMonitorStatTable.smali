.class public Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;
.super Ljava/lang/Object;
.source "AppMonitorStatTable.java"


# instance fields
.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;->o:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public registerRowAndColumn(Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;->p:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1, p3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    return-object p0
.end method

.method public update(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/AppMonitorStatTable;->p:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    return-object p0
.end method
