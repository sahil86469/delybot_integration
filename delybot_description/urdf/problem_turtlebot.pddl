(define (problem simple_avoid)
   (:domain swarmmine)
   (:objects ugv_1 ugv_2 ugv_3 ugv_4 lane_l lane_r lane_c lane_b)
   (:init (ugv ugv_1)
        (ugv ugv_2)
        (ugv ugv_3)
        (ugv ugv_4)
        (lane lane_l)
        (lane lane_c)
        (lane lane_r)
        (lane lane_b)
        (connected lane_l lane_c)
        (connected lane_c lane_r)
        (connected lane_c lane_l)
        (connected lane_r lane_c)
        (connected lane_l lane_r)
        (connected lane_r lane_l)
          (ugv_at ugv_1 lane_l)
          (ugv_at ugv_2 lane_c)
          (ugv_at ugv_3 lane_r)
          (mine ugv_1 lane_l)
          (free ugv_1 lane_c)
          (free ugv_1 lane_r)
          (free ugv_2 lane_c)
          (free ugv_2 lane_r)
          (free ugv_3 lane_c)
          (free ugv_3 lane_r))
   (:goal (and (scanned ugv_1 lane_l)
               (scanned ugv_2 lane_c)
               (scanned ugv_3 lane_r))))
