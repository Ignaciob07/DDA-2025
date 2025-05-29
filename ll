regmap

                    "RM_RX_SCFSM_SEL_RX_DIGADC_HI_SRST"            : 0, # FIXME: MANUALLY ADDED
                    "RM_RX_SCFSM_SEL_RX_DIGADC_HQ_SRST"            : 0, # FIXME: MANUALLY ADDED
                    "RM_RX_SCFSM_SEL_RX_DIGADC_HI_ENABLE"          : 0, # FIXME: MANUALLY ADDED
                    "RM_RX_SCFSM_SEL_RX_DIGADC_HQ_ENABLE"          : 0, # FIXME: MANUALLY ADDED

                    "RM_RX_SCFSM_OVR_RX_COMP_EQ_HI_SRST"           : 0,
                    "RM_RX_SCFSM_OVR_RX_COMP_EQ_HQ_SRST"           : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HI_SRST"              : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HQ_SRST"              : 0,
                    "RM_RX_SCFSM_OVR_RX_GAIN_OFFSET_HI_SRST"       : 0,
                    "RM_RX_SCFSM_OVR_RX_GAIN_OFFSET_HQ_SRST"       : 0,
                    "RM_RX_SCFSM_OVR_RX_DATAPATH_FIFO_HI_SRST"         : 0,
                    "RM_RX_SCFSM_OVR_RX_DATAPATH_FIFO_HQ_SRST"         : 0,
                    "RM_RX_SCFSM_OVR_RX_AFIFO_CAL_ADC_HI_SRST"         : 0,
                    "RM_RX_SCFSM_OVR_RX_AFIFO_CAL_ADC_HQ_SRST"         : 0,
                    "RM_RX_SCFSM_OVR_RX_COMP_EQ_HI_ENABLE"         : 0,
                    "RM_RX_SCFSM_OVR_RX_COMP_EQ_HQ_ENABLE"         : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HI_ENABLE"            : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HQ_ENABLE"            : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HI_ENABLE_CORRELATOR" : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HQ_ENABLE_CORRELATOR" : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HI_INIT"              : 0,
                    "RM_RX_SCFSM_OVR_RX_CORR_HQ_INIT"              : 0,
                    "RM_RX_SCFSM_OVR_RX_GAIN_HI_ENABLE"            : 0,
                    "RM_RX_SCFSM_OVR_RX_GAIN_HQ_ENABLE"            : 0,
                    "RM_RX_SCFSM_OVR_RX_OFFSET_HI_ENABLE"          : 0,
                    "RM_RX_SCFSM_OVR_RX_OFFSET_HQ_ENABLE"          : 0,

                    "RM_RX_SCFSM_OVR_RX_DIGADC_HI_SRST"            : 0, #  FIXME: MANUALLY ADDED
                    "RM_RX_SCFSM_OVR_RX_DIGADC_HQ_SRST"            : 0, #  FIXME: MANUALLY ADDED
                    "RM_RX_SCFSM_OVR_RX_DIGADC_HI_ENABLE"          : 0, #  FIXME: MANUALLY ADDED
                    "RM_RX_SCFSM_OVR_RX_DIGADC_HQ_ENABLE"          : 0, #  FIXME: MANUALLY ADDED


logutils

# FIXME: MANUALLY ADDED
def log_dsp_rx_rm(case, simh, STEP=1,END_LOG_RM=0, name_type='l', data_type='0'):
    case.log(signals = [f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_rst_n',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_enable',                                     
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_scfsm_max_cter_r_datapath',                 
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_scfsm_max_cter_load_coeff',                 
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_scfsm_max_cter_cal_gain_offset_done',       
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_force_state',                                
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_state',                                  
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_comp_eq_hi_srst',                     
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_comp_eq_hq_srst',                     
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hi_srst',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hq_srst',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_gain_offset_hi_srst',                 
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_gain_offset_hq_srst',                 
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_datapath_fifo_hi_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_datapath_fifo_hq_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_afifo_cal_adc_hi_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_afifo_cal_adc_hq_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_comp_eq_hi_enable',                   
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_comp_eq_hq_enable',                   
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hi_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hq_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hi_enable_correlator',           
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hq_enable_correlator',           
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hi_init',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_corr_hq_init',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_gain_hi_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_gain_hq_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_offset_hi_enable',                    
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_offset_hq_enable',                    
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_comp_eq_hi_srst',                     
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_comp_eq_hq_srst',                     
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hi_srst',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hq_srst',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_gain_offset_hi_srst',                 
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_gain_offset_hq_srst',                 
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_datapath_fifo_hi_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_datapath_fifo_hq_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_afifo_cal_adc_hi_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_afifo_cal_adc_hq_srst',            
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_comp_eq_hi_enable',                   
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_comp_eq_hq_enable',                   
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hi_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hq_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hi_enable_correlator',           
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hq_enable_correlator',           
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hi_init',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_corr_hq_init',                        
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_gain_hi_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_gain_hq_enable',                      
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_offset_hi_enable',                    
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_offset_hq_enable',                    


# FIXME: MANUALLY ADDED
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_digadc_hi_srst',
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_digadc_hq_srst',
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_digadc_hi_enable',
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_sel_rx_digadc_hq_enable',
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_digadc_hi_srst',
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_digadc_hq_srst',
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_digadc_hi_enable',
    #                   f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_scfsm_ovr_rx_digadc_hq_enable',

                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_mode',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hi_coeffs_init',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hi_offset_init',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hi_mu_lms',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hi_afifo_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hq_coeffs_init',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hq_offset_init',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hq_mu_lms',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_comp_eq_hq_afifo_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hi_afifo_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hi_correlation_length',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hi_bypass_correlator',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hi_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hi_phase',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hi_reference_coef',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hi_data_path_fifo_ptr',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hq_afifo_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hq_correlation_length',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hq_bypass_correlator',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hq_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hq_phase',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hq_reference_coef',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_corr_hq_data_path_fifo_ptr',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_cal_adc_hi_afifo_valid_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_cal_adc_hi_read_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_cal_adc_hi_write_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_cal_adc_hq_afifo_valid_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_cal_adc_hq_read_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_cal_adc_hq_write_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_dp_fifo_hi_valid_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_dp_fifo_hi_read_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_dp_fifo_hi_write_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_dp_fifo_hq_valid_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_dp_fifo_hq_read_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_dp_fifo_hq_write_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_adc_offset_alpha_hi',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_adc_agc_gain_sel_hi',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_adc_agc_gain_hi',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_adc_offset_alpha_hq',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_adc_agc_gain_sel_hq',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_adc_agc_gain_hq',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hi_enable',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hi_srst',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hi_corr_sel',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hi_cnt_ph',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hi_fifo_rp',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hq_enable',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hq_srst',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hq_corr_sel',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hq_cnt_ph',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_lp_hq_fifo_rp',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_lp_hi_valid_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_lp_hi_read_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_lp_hi_write_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_afifo_lp_hi_write_reset',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_afifo_lp_hi_read_reset',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_lp_hq_valid_delay',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_lp_hq_read_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_static_rx_afifo_lp_hq_write_pointer_reset_value',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_afifo_lp_hq_write_reset',
                        f'root.u_dsp_rx_h.u_dsp_rx_regmap.o_rm_rx_afifo_lp_hq_read_reset'                           ], 
                        
                        clock = "root.line_ingress_clock", edge = simh.POSITIVE, begin = 0, step = STEP, end = END_LOG_RM, file_type = simh.TEXT, file_name_type = name_type, format = data_type)


chip config
# FIXME: MANUALLY ADDED
        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_sel_rx_digadc_hi_srst'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])
        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_sel_rx_digadc_hq_srst'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])
        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_sel_rx_digadc_hi_enable'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])
        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_sel_rx_digadc_hq_enable'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])

        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_ovr_rx_digadc_hi_srst'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])
        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_ovr_rx_digadc_hq_srst'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])
        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_ovr_rx_digadc_hi_enable'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])
        # self.set_in_path(self.settings,f'root{hierarchy}.u_dsp_rx_h.u_dsp_rx_regmap.rm_rx_scfsm_ovr_rx_digadc_hq_enable'          , self.get_rm_from_module(REGMAP,'RM_RX_SCFSM_SEL_RX_OFFSET_HQ_ENABLE'         )[0])
